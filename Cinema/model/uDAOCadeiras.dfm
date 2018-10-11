object dmDAOCadeiras: TdmDAOCadeiras
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 177
  Width = 282
  object mmCadeiras: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 64
    Top = 56
    object mmCadeirasOcupado: TBooleanField
      FieldName = 'Ocupado'
    end
    object mmCadeirasId: TFDAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
  end
  object dsCadeiras: TDataSource
    DataSet = mmCadeiras
    Left = 136
    Top = 56
  end
end
