.class public Lde/ecspride/MainActivity$B;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/ecspride/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "B"
.end annotation


# instance fields
.field public attr:Lde/ecspride/MainActivity$A;

.field final synthetic this$0:Lde/ecspride/MainActivity;


# direct methods
.method public constructor <init>(Lde/ecspride/MainActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lde/ecspride/MainActivity$B;->this$0:Lde/ecspride/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
