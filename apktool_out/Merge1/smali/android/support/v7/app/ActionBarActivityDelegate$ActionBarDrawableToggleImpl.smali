.class Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegate;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegate;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegate;Landroid/support/v7/app/ActionBarActivityDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegate;
    .param p2, "x1"    # Landroid/support/v7/app/ActionBarActivityDelegate$1;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/ActionBarActivityDelegate;)V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 216
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    iget-object v2, v2, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivityDelegate;->getHomeAsUpIndicatorAttrId()I

    move-result v4

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 234
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 235
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 225
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 226
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 230
    :cond_0
    return-void
.end method
