from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import ORJSONResponse
from src.configs.settings import settings
from src.routers import router
import uvicorn

app = FastAPI(
    title="CS ML App",
    version=settings.APP_VERSION,
    default_response_class=ORJSONResponse,
)

app.add_middleware(
    middleware_class=CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(
    router=router,
)

if __name__ == "__main__":
    uvicorn.run(
        app=app,
        host=settings.APP_HOST,
        port=settings.APP_PORT,
        reload=True,
    )
