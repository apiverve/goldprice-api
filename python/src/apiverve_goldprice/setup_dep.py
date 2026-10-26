from setuptools import setup, find_packages

setup(
    name='apiverve_goldprice',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Gold Price fetches real-time spot gold prices per troy ounce, gram, and kilogram. Each response includes the price update timestamp, 24-hour price change, and market direction, while paid plans add custom currencies and hourly history.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/goldprice?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
