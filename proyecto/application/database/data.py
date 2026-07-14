from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker

DATABASE_URL = "postgresql://postgres:123456@localhost:5432/ird31"
#DATABASE_URL = 'mysql+pymysql://root:@localhost:3306/ird31'

engine = create_engine(DATABASE_URL, echo=True)
Base = declarative_base()
SesionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

