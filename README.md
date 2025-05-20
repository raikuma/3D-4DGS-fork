# Hybrid 3D-4D Gaussian Splatting for Fast Dynamic Scene Representation
Seungjun Oh, Younggeun Lee, Hyejin Jeon, Eunbyung Park

### [[Paper]()] [[Project Page](https://ohsngjun.github.io/3D-4DGS/)]

![main](assets/main.jpg)

*Recent advancements in dynamic 3D scene reconstruction have shown promising results, enabling high-fidelity
3D novel view synthesis with improved temporal consistency. Among these, 4D Gaussian Splatting (4DGS) has
emerged as an appealing approach due to its ability to model high-fidelity spatial and temporal variations. However, existing methods suffer from substantial computational and memory overhead due to the redundant allocation of 4D Gaussians to static regions, which can also degrade image quality. In this work, we introduce hybrid 3D–4D Gaussian Splatting (3D-4DGS), a novel framework that adaptively represents static regions with 3D Gaussians while reserving 4D Gaussians for dynamic elements. Our method begins with a fully 4D Gaussian representation and iteratively converts temporally invariant Gaussians into 3D, significantly reducing the number of parameters and improving computational efficiency. Meanwhile, dynamic Gaussians retain their full 4D representation, capturing complex motions with high fidelity. Our approach achieves significantly faster training times compared to baseline 4D Gaussian Splatting methods while maintaining or improving the visual quality.*

## 🔥 Overview

**3D-4D Gaussian Splatting** introduces a hybrid representation that combines 3D and 4D Gaussians to model dynamic scenes efficiently — reducing memory, improving speed, and preserving quality.

## 📌 Key Features

- Efficient hybrid representation (3D for static, 4D for dynamic)
- Faster training than 4DGS with similar or better quality
- Drop-in replacement for existing 4DGS pipelines


## 📦 Installation

```shell
git clone https://github.com/ohsngjun/3D-4DGS.git
cd 3D-4DGS
conda env create --file environment.yml
conda activate 3d4dgs
```

## 📁 Data preparation
### Neural 3D Video Dataset
Download the dataset [here](https://github.com/facebookresearch/Neural_3D_Video).
After downloading the data, preprocess it using:
```shell
python scripts/n3v2blender.py $path_to_dataset
```

## 🏃‍♂️ Training
Single sequence training:
```shell
python main.py --config configs/n3v/default.yaml --model_path <model save path> --source_path <dataset path>
```
Train all sequences:
```shell
bash train.sh
```
Don't forget to adjust dataset paths in train.sh.

## 🧪 Testing / Evaluation

```shell
python main.py --config configs/n3v/default.yaml --model_path <model path> --source_path <dataset path> --start_checkpoint <model_path>/chkpnt6000.pth --val
```

## 🙏 Acknowledgement
This project builds upon:
- [Real-time 4D Gaussian Splatting](https://github.com/fudan-zvg/4d-gaussian-splatting)
- [Ex4DGS](https://github.com/juno181/Ex4DGS)
- [4D-Rotor Gaussians](https://github.com/weify627/4D-Rotor-Gaussians) (data preprocessing)
- [@sorceressyidi](https://github.com/sorceressyidi) (visualization code)

## 📚 Bibtex

```
```