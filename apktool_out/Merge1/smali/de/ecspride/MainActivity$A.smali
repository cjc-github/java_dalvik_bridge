.class Lde/ecspride/MainActivity$A;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/ecspride/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "A"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field final synthetic this$0:Lde/ecspride/MainActivity;


# direct methods
.method constructor <init>(Lde/ecspride/MainActivity;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lde/ecspride/MainActivity$A;->this$0:Lde/ecspride/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "Y"

    iput-object v0, p0, Lde/ecspride/MainActivity$A;->b:Ljava/lang/String;

    return-void
.end method
