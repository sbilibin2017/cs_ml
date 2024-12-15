from fastapi import APIRouter
from src.routers.ml import router as ml_router

router = APIRouter(
    prefix="/v1",
)

router.include_router(ml_router)  # pyright: ignore
