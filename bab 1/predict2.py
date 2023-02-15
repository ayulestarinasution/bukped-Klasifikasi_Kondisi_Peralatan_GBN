import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split

dataset = pd.read_csv("alat_encode.csv")
replacements = {'rusak': 0,
                        'perbaikan': 1,
                        'normal': 2}
dataset.replace(replacements, inplace=True)
dataset = dataset.astype(float)                       

dataset[[ 'Jenis_Alat','MEREK', 'BUATAN', 'TAHUN_PEMBUATAN', 'KATEGORI_KERUSAKAN', 'KONDISI']] = dataset[['Jenis_Alat','MEREK', 'BUATAN', 'TAHUN_PEMBUATAN', 'KATEGORI_KERUSAKAN', 'KONDISI ']].applymap(np.log)

#shape
print(dataset.shape)

print(dataset.head(10))

print(dataset.describe())

"""### Drop all the columns with `NAN` values"""

dataset = dataset.dropna()

#visualize
plt.xlabel("Jenis_Alat")
plt.ylabel("Keterangan")

plt.scatter(dataset['Jenis_Alat'],dataset['KONDISI'])

x = dataset[[ 'Jenis_Alat' , 'MEREK' , 'BUATAN' , 'TAHUN_PEMBUATAN' , 'KATEGORI_KERUSAKAN' , 'KONDISI ' , 'Sertifikasi '  ]]
y = dataset['Keterangan']

x_train , x_test , y_train , y_test = train_test_split(x, y, test_size=0.2,  random_state = 42)
model = GaussianNB()

model.fit(x_train, y_train)
predictions = model.predict(x_test)



#Predict Output
predicted= model.predict([[ 23 , 1 , 0, 10 , 0, 0 , 0  ]]) # 0:Overcast, 2:Mild


print(accuracy_score(y_test,predictions))
print(predicted)