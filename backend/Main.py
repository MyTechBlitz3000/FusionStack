from fastapi import FastAPI
from sqlalchemy.orm import Session

from database import Base
from database import engine
from database import SessionLocal

from models import User
from schemas import UserCreate

Base.metadata.create_all(bind=engine)

app = FastAPI(
    title="NovaFusionDB"
)

@app.get("/")
def root():
    return {
        "message": "NovaFusionDB Running"
    }

@app.get("/users")
def get_users():
    db: Session = SessionLocal()

    users = db.query(User).all()

    db.close()

    return users

@app.post("/users")
def create_user(user: UserCreate):
    db: Session = SessionLocal()

    db_user = User(
        username=user.username,
        email=user.email
    )

    db.add(db_user)
    db.commit()
    db.refresh(db_user)

    db.close()

    return db_user
