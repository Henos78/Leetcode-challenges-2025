import pandas as pd

def createDataframe(student_data: List[List[int]]) -> pd.DataFrame:
    col_names = ['student_id','age']
    res_df = pd.DataFrame(student_data,  columns=['student_id','age'])
    return res_df
    