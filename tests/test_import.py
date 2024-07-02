import unittest
import pandas as pd
from scripts import cropped as cropped_script

class TestCroppedScript(unittest.TestCase):
    def setUp(self):
        # Create a sample dataframe
        self.df = pd.DataFrame({
            'date_column': pd.date_range(start='1/1/2014', periods=5, freq='Y'),
            'value': [10, 20, 30, 40, 50]
        })
        self.csv_file_path = 'tests/test_data.csv'
        self.df.to_csv(self.csv_file_path, index=False)

    def test_crop_dataset(self):
        # Call the crop function from the cropped script
        cropped_df = cropped_script.crop_dataset(self.csv_file_path)
        # Verify the cropped dataframe
        self.assertEqual(len(cropped_df), 4)
        self.assertEqual(cropped_df['value'].tolist(), [20, 30, 40, 50])

if __name__ == '__main__':
    unittest.main()
