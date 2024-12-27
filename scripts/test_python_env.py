"""This script is used to test python environment."""

# print python executable path
import sys
print(sys.executable)

# test gpu availability
import torch
if torch.cuda.is_available():
    print("GPU is available")
else:
    print("GPU is not available")