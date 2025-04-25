# Dockerfile

# Sử dụng image của pyinstaller-windows để build .exe
FROM cdrx/pyinstaller-windows

# Đặt thư mục làm việc
WORKDIR /src

# Copy yêu cầu thư viện (nếu có)
COPY requirements.txt .
RUN pip install -r requirements.txt || true

# Copy mã nguồn vào container
COPY . .

# Build file .exe từ Python script
CMD ["pyinstaller", "--onefile", "main.py"]

