object C40AppTempletForm: TC40AppTempletForm
  Left = 0
  Top = 0
  Width = 700
  Height = 500
  AutoScroll = True
  Caption = 'Cloud 4.0 Application Templet.'
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object botSplitter: TSplitter
    Left = 0
    Top = 324
    Width = 684
    Height = 8
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
    MinSize = 120
    ResizeStyle = rsUpdate
    ExplicitTop = 229
    ExplicitWidth = 791
  end
  object logMemo: TMemo
    Left = 0
    Top = 332
    Width = 684
    Height = 129
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    DoubleBuffered = True
    ParentDoubleBuffered = False
    ScrollBars = ssVertical
    TabOrder = 0
    WordWrap = False
    ExplicitTop = 330
  end
  object PGControl: TPageControl
    Left = 0
    Top = 0
    Width = 684
    Height = 324
    ActivePage = BuildNetworkTabSheet
    Align = alClient
    TabOrder = 1
    object BuildNetworkTabSheet: TTabSheet
      Caption = 'Build Network'
      ImageIndex = -1
      object net_Top_Splitter: TSplitter
        Left = 0
        Top = 147
        Width = 676
        Height = 8
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        MinSize = 100
        ResizeStyle = rsUpdate
        ExplicitTop = 226
        ExplicitWidth = 841
      end
      object DependPanel: TPanel
        Left = 0
        Top = 0
        Width = 676
        Height = 147
        Align = alTop
        BevelOuter = bvNone
        Caption = 'DependPanel'
        TabOrder = 0
        object DependNetToolPanel: TPanel
          Left = 0
          Top = 0
          Width = 676
          Height = 25
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          DesignSize = (
            676
            25)
          object JoinHostEdit: TLabeledEdit
            Left = 56
            Top = 2
            Width = 105
            Height = 21
            EditLabel.Width = 44
            EditLabel.Height = 13
            EditLabel.Caption = 'Join Host'
            LabelPosition = lpLeft
            TabOrder = 0
          end
          object JoinPortEdit: TLabeledEdit
            Left = 190
            Top = 2
            Width = 49
            Height = 21
            EditLabel.Width = 20
            EditLabel.Height = 13
            EditLabel.Caption = 'Port'
            LabelPosition = lpLeft
            TabOrder = 1
          end
          object BuildDependNetButton: TButton
            Left = 550
            Top = 0
            Width = 76
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Build Tunnel'
            TabOrder = 3
            OnClick = BuildDependNetButtonClick
          end
          object resetDependButton: TButton
            Left = 632
            Top = 0
            Width = 42
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Reset'
            TabOrder = 4
            OnClick = resetDependButtonClick
          end
          object DependEdit: TLabeledEdit
            Left = 293
            Top = 2
            Width = 251
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 37
            EditLabel.Height = 13
            EditLabel.Caption = 'Depend'
            LabelPosition = lpLeft
            TabOrder = 2
            OnChange = DependEditChange
            OnExit = DependEditExit
          end
        end
        object RependNetListView: TListView
          Left = 0
          Top = 25
          Width = 676
          Height = 122
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Checkboxes = True
          Columns = <
            item
              Caption = 'Tunnel Registration'
              Width = 150
            end
            item
              AutoSize = True
              Caption = 'Depend Classes'
            end
            item
              Caption = 'Unit'
              Width = 200
            end>
          ColumnClick = False
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          TabOrder = 1
          ViewStyle = vsReport
          OnChange = RependNetListViewChange
          OnChanging = RependNetListViewChanging
          ExplicitTop = 27
        end
      end
      object servicePanel: TPanel
        Left = 0
        Top = 155
        Width = 676
        Height = 141
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object ServiceToolPanel: TPanel
          Left = 0
          Top = 0
          Width = 676
          Height = 25
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          DesignSize = (
            676
            25)
          object Label1: TLabel
            Left = 10
            Top = 8
            Width = 62
            Height = 13
            Caption = 'Listening  IP:'
          end
          object ServIPComboBox: TComboBox
            Left = 78
            Top = 2
            Width = 161
            Height = 21
            TabOrder = 0
          end
          object ServPortEdit: TLabeledEdit
            Left = 270
            Top = 2
            Width = 49
            Height = 21
            EditLabel.Width = 20
            EditLabel.Height = 13
            EditLabel.Caption = 'Port'
            LabelPosition = lpLeft
            TabOrder = 1
          end
          object ServiceDependEdit: TLabeledEdit
            Left = 405
            Top = 2
            Width = 139
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 75
            EditLabel.Height = 13
            EditLabel.Caption = 'Service Depend'
            LabelPosition = lpLeft
            TabOrder = 2
            OnChange = ServiceDependEditChange
            OnExit = ServiceDependEditExit
          end
          object ServBuildNetButton: TButton
            Left = 550
            Top = 0
            Width = 78
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Build Service'
            TabOrder = 3
            OnClick = ServBuildNetButtonClick
          end
          object ServiceResetButton: TButton
            Left = 632
            Top = 0
            Width = 42
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Reset'
            TabOrder = 4
            OnClick = ServiceResetButtonClick
          end
        end
        object ServiceListView: TListView
          Left = 0
          Top = 25
          Width = 676
          Height = 116
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Checkboxes = True
          Columns = <
            item
              Caption = 'Service Registration'
              Width = 150
            end
            item
              AutoSize = True
              Caption = 'Service Classes'
            end
            item
              Caption = 'Unit'
              Width = 200
            end>
          ColumnClick = False
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          TabOrder = 1
          ViewStyle = vsReport
          OnChange = ServiceListViewChange
          OnChanging = ServiceListViewChanging
          ExplicitTop = 23
        end
      end
    end
    object OptTabSheet: TTabSheet
      Caption = 'SaaS Options'
      ImageIndex = 2
      object QuietCheckBox: TCheckBox
        Left = 175
        Top = 13
        Width = 97
        Height = 17
        Caption = 'Quiet Mode'
        TabOrder = 0
      end
      object SafeCheckTimerEdit: TLabeledEdit
        Left = 175
        Top = 36
        Width = 60
        Height = 21
        EditLabel.Width = 83
        EditLabel.Height = 13
        EditLabel.Caption = 'Safe check timer:'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object PhysicsReconnectionDelayEdit: TLabeledEdit
        Left = 175
        Top = 63
        Width = 60
        Height = 21
        EditLabel.Width = 137
        EditLabel.Height = 13
        EditLabel.Caption = 'Physics Reconnection Delay:'
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object UpdateServiceInfoTimerEdit: TLabeledEdit
        Left = 175
        Top = 90
        Width = 60
        Height = 21
        EditLabel.Width = 129
        EditLabel.Height = 13
        EditLabel.Caption = 'Update Service Info Timer:'
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object PhysicsServiceTimeoutEdit: TLabeledEdit
        Left = 175
        Top = 117
        Width = 60
        Height = 21
        EditLabel.Width = 118
        EditLabel.Height = 13
        EditLabel.Caption = 'Physics Service Timeout:'
        LabelPosition = lpLeft
        TabOrder = 4
      end
      object PhysicsTunnelTimeoutEdit: TLabeledEdit
        Left = 175
        Top = 144
        Width = 60
        Height = 21
        EditLabel.Width = 115
        EditLabel.Height = 13
        EditLabel.Caption = 'Physics Tunnel Timeout:'
        LabelPosition = lpLeft
        TabOrder = 5
      end
      object KillIDCFaultTimeoutEdit: TLabeledEdit
        Left = 175
        Top = 171
        Width = 60
        Height = 21
        EditLabel.Width = 105
        EditLabel.Height = 13
        EditLabel.Caption = 'Kill IDC Fault Timeout:'
        LabelPosition = lpLeft
        TabOrder = 6
      end
      object RootDirectoryEdit: TLabeledEdit
        Left = 175
        Top = 198
        Width = 356
        Height = 21
        EditLabel.Width = 74
        EditLabel.Height = 13
        EditLabel.Caption = 'Root Directory:'
        LabelPosition = lpLeft
        TabOrder = 7
      end
      object SelRootDirButton: TButton
        Left = 537
        Top = 196
        Width = 26
        Height = 25
        Caption = '..'
        TabOrder = 8
        OnClick = SelRootDirButtonClick
      end
      object passwdEdit: TLabeledEdit
        Left = 175
        Top = 225
        Width = 166
        Height = 21
        EditLabel.Width = 99
        EditLabel.Height = 13
        EditLabel.Caption = 'Cloud 4.0 Password:'
        LabelPosition = lpLeft
        TabOrder = 9
      end
      object ApplyOptButton: TButton
        Left = 175
        Top = 252
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 10
        OnClick = ApplyOptButtonClick
      end
      object ResetOptButton: TButton
        Left = 256
        Top = 252
        Width = 75
        Height = 25
        Caption = 'Reset'
        TabOrder = 11
        OnClick = ResetOptButtonClick
      end
    end
    object LocalServiceStates_TabSheet: TTabSheet
      Caption = 'Service-States'
      ImageIndex = 3
      object localserinfoLSplitter: TSplitter
        Left = 200
        Top = 0
        Width = 8
        Height = 296
        AutoSnap = False
        MinSize = 120
        ResizeStyle = rsUpdate
        ExplicitLeft = 158
      end
      object ServiceInfoMemo: TMemo
        Left = 208
        Top = 0
        Width = 468
        Height = 296
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = True
        DoubleBuffered = True
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object ServInfoPhyAddrListBox: TListBox
        Left = 0
        Top = 0
        Width = 200
        Height = 296
        Align = alLeft
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DoubleBuffered = True
        ItemHeight = 13
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = ServInfoPhyAddrListBoxClick
      end
    end
    object TunnelStatesTabSheet: TTabSheet
      Caption = 'Tunnel-States'
      ImageIndex = 3
      object tunnel_infoLSplitter: TSplitter
        Left = 200
        Top = 0
        Width = 8
        Height = 296
        AutoSnap = False
        MinSize = 120
        ResizeStyle = rsUpdate
        ExplicitLeft = 174
      end
      object TunnelInfoMemo: TMemo
        Left = 208
        Top = 0
        Width = 468
        Height = 296
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DoubleBuffered = True
        ParentDoubleBuffered = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object TunnelInfoPhyAddrListBox: TListBox
        Left = 0
        Top = 0
        Width = 200
        Height = 296
        Align = alLeft
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DoubleBuffered = True
        ItemHeight = 13
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = TunnelInfoPhyAddrListBoxClick
      end
    end
    object SaaS_Network_States_TabSheet: TTabSheet
      Caption = 'SaaS-Network-States'
      ImageIndex = 4
      object SaaS_Info_TreeView: TTreeView
        Left = 0
        Top = 0
        Width = 676
        Height = 296
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        DoubleBuffered = True
        HideSelection = False
        Indent = 19
        ParentDoubleBuffered = False
        ReadOnly = True
        RightClickSelect = True
        RowSelect = True
        TabOrder = 0
        OnKeyUp = SaaS_Info_TreeViewKeyUp
      end
    end
    object cmd_tool_TabSheet: TTabSheet
      Caption = 'Command Line Tool'
      ImageIndex = 5
      DesignSize = (
        676
        296)
      object cmdLineParamEdit: TLabeledEdit
        Left = 98
        Top = 26
        Width = 547
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'parameter:'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object GenerateCmdLineButton: TButton
        Left = 98
        Top = 80
        Width = 85
        Height = 25
        Caption = 'Generate'
        TabOrder = 3
        OnClick = GenerateCmdLineButtonClick
      end
      object cmdLineTitleEdit: TLabeledEdit
        Left = 98
        Top = 53
        Width = 108
        Height = 21
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Title:'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object cmdLineAppTitleEdit: TLabeledEdit
        Left = 265
        Top = 53
        Width = 108
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'App Title:'
        LabelPosition = lpLeft
        TabOrder = 2
      end
    end
  end
  object netTimer: TTimer
    Interval = 10
    OnTimer = netTimerTimer
    Left = 50
    Top = 344
  end
  object UpdateStateTimer: TTimer
    Interval = 3000
    OnTimer = UpdateStateTimerTimer
    Left = 49
    Top = 397
  end
end
