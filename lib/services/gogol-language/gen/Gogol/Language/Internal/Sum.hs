{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Language.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Language.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AnalyzeEntitiesRequest_EncodingType
    AnalyzeEntitiesRequest_EncodingType
      ( AnalyzeEntitiesRequest_EncodingType_None,
        AnalyzeEntitiesRequest_EncodingType_UTF8,
        AnalyzeEntitiesRequest_EncodingType_UTF16,
        AnalyzeEntitiesRequest_EncodingType_UTF32,
        ..
      ),

    -- * AnalyzeSentimentRequest_EncodingType
    AnalyzeSentimentRequest_EncodingType
      ( AnalyzeSentimentRequest_EncodingType_None,
        AnalyzeSentimentRequest_EncodingType_UTF8,
        AnalyzeSentimentRequest_EncodingType_UTF16,
        AnalyzeSentimentRequest_EncodingType_UTF32,
        ..
      ),

    -- * AnnotateTextRequest_EncodingType
    AnnotateTextRequest_EncodingType
      ( AnnotateTextRequest_EncodingType_None,
        AnnotateTextRequest_EncodingType_UTF8,
        AnnotateTextRequest_EncodingType_UTF16,
        AnnotateTextRequest_EncodingType_UTF32,
        ..
      ),

    -- * CpuMetric_CpuType
    CpuMetric_CpuType
      ( CpuMetric_CpuType_UNKNOWNCPUTYPE,
        CpuMetric_CpuType_A2,
        CpuMetric_CpuType_A3,
        CpuMetric_CpuType_C2,
        CpuMetric_CpuType_C2D,
        CpuMetric_CpuType_Custom,
        CpuMetric_CpuType_E2,
        CpuMetric_CpuType_G2,
        CpuMetric_CpuType_C3,
        CpuMetric_CpuType_M2,
        CpuMetric_CpuType_M1,
        CpuMetric_CpuType_N1,
        CpuMetric_CpuType_N2CUSTOM,
        CpuMetric_CpuType_N2,
        CpuMetric_CpuType_N2D,
        ..
      ),

    -- * CpuMetric_MachineSpec
    CpuMetric_MachineSpec
      ( CpuMetric_MachineSpec_UNKNOWNMACHINESPEC,
        CpuMetric_MachineSpec_N1_STANDARD_2,
        CpuMetric_MachineSpec_N1_STANDARD_4,
        CpuMetric_MachineSpec_N1_STANDARD_8,
        CpuMetric_MachineSpec_N1_STANDARD_16,
        CpuMetric_MachineSpec_N1_STANDARD_32,
        CpuMetric_MachineSpec_N1_STANDARD_64,
        CpuMetric_MachineSpec_N1_STANDARD_96,
        CpuMetric_MachineSpec_N1_HIGHMEM_2,
        CpuMetric_MachineSpec_N1_HIGHMEM_4,
        CpuMetric_MachineSpec_N1_HIGHMEM_8,
        CpuMetric_MachineSpec_N1_HIGHMEM_16,
        CpuMetric_MachineSpec_N1_HIGHMEM_32,
        CpuMetric_MachineSpec_N1_HIGHMEM_64,
        CpuMetric_MachineSpec_N1_HIGHMEM_96,
        CpuMetric_MachineSpec_N1_HIGHCPU_2,
        CpuMetric_MachineSpec_N1_HIGHCPU_4,
        CpuMetric_MachineSpec_N1_HIGHCPU_8,
        CpuMetric_MachineSpec_N1_HIGHCPU_16,
        CpuMetric_MachineSpec_N1_HIGHCPU_32,
        CpuMetric_MachineSpec_N1_HIGHCPU_64,
        CpuMetric_MachineSpec_N1_HIGHCPU_96,
        CpuMetric_MachineSpec_A2HIGHGPU1G,
        CpuMetric_MachineSpec_A2HIGHGPU2G,
        CpuMetric_MachineSpec_A2HIGHGPU4G,
        CpuMetric_MachineSpec_A2HIGHGPU8G,
        CpuMetric_MachineSpec_A2MEGAGPU16G,
        CpuMetric_MachineSpec_A2ULTRAGPU1G,
        CpuMetric_MachineSpec_A2ULTRAGPU2G,
        CpuMetric_MachineSpec_A2ULTRAGPU4G,
        CpuMetric_MachineSpec_A2ULTRAGPU8G,
        CpuMetric_MachineSpec_A3HIGHGPU1G,
        CpuMetric_MachineSpec_A3HIGHGPU2G,
        CpuMetric_MachineSpec_A3HIGHGPU4G,
        CpuMetric_MachineSpec_A3HIGHGPU8G,
        CpuMetric_MachineSpec_A3MEGAGPU8G,
        CpuMetric_MachineSpec_E2_STANDARD_2,
        CpuMetric_MachineSpec_E2_STANDARD_4,
        CpuMetric_MachineSpec_E2_STANDARD_8,
        CpuMetric_MachineSpec_E2_STANDARD_16,
        CpuMetric_MachineSpec_E2_STANDARD_32,
        CpuMetric_MachineSpec_E2_HIGHMEM_2,
        CpuMetric_MachineSpec_E2_HIGHMEM_4,
        CpuMetric_MachineSpec_E2_HIGHMEM_8,
        CpuMetric_MachineSpec_E2_HIGHMEM_16,
        CpuMetric_MachineSpec_E2_HIGHCPU_2,
        CpuMetric_MachineSpec_E2_HIGHCPU_4,
        CpuMetric_MachineSpec_E2_HIGHCPU_8,
        CpuMetric_MachineSpec_E2_HIGHCPU_16,
        CpuMetric_MachineSpec_E2_HIGHCPU_32,
        CpuMetric_MachineSpec_N2_STANDARD_2,
        CpuMetric_MachineSpec_N2_STANDARD_4,
        CpuMetric_MachineSpec_N2_STANDARD_8,
        CpuMetric_MachineSpec_N2_STANDARD_16,
        CpuMetric_MachineSpec_N2_STANDARD_32,
        CpuMetric_MachineSpec_N2_STANDARD_48,
        CpuMetric_MachineSpec_N2_STANDARD_64,
        CpuMetric_MachineSpec_N2_STANDARD_80,
        CpuMetric_MachineSpec_N2_STANDARD_96,
        CpuMetric_MachineSpec_N2_STANDARD_128,
        CpuMetric_MachineSpec_N2_HIGHMEM_2,
        CpuMetric_MachineSpec_N2_HIGHMEM_4,
        CpuMetric_MachineSpec_N2_HIGHMEM_8,
        CpuMetric_MachineSpec_N2_HIGHMEM_16,
        CpuMetric_MachineSpec_N2_HIGHMEM_32,
        CpuMetric_MachineSpec_N2_HIGHMEM_48,
        CpuMetric_MachineSpec_N2_HIGHMEM_64,
        CpuMetric_MachineSpec_N2_HIGHMEM_80,
        CpuMetric_MachineSpec_N2_HIGHMEM_96,
        CpuMetric_MachineSpec_N2_HIGHMEM_128,
        CpuMetric_MachineSpec_N2_HIGHCPU_2,
        CpuMetric_MachineSpec_N2_HIGHCPU_4,
        CpuMetric_MachineSpec_N2_HIGHCPU_8,
        CpuMetric_MachineSpec_N2_HIGHCPU_16,
        CpuMetric_MachineSpec_N2_HIGHCPU_32,
        CpuMetric_MachineSpec_N2_HIGHCPU_48,
        CpuMetric_MachineSpec_N2_HIGHCPU_64,
        CpuMetric_MachineSpec_N2_HIGHCPU_80,
        CpuMetric_MachineSpec_N2_HIGHCPU_96,
        CpuMetric_MachineSpec_N2D_STANDARD_2,
        CpuMetric_MachineSpec_N2D_STANDARD_4,
        CpuMetric_MachineSpec_N2D_STANDARD_8,
        CpuMetric_MachineSpec_N2D_STANDARD_16,
        CpuMetric_MachineSpec_N2D_STANDARD_32,
        CpuMetric_MachineSpec_N2D_STANDARD_48,
        CpuMetric_MachineSpec_N2D_STANDARD_64,
        CpuMetric_MachineSpec_N2D_STANDARD_80,
        CpuMetric_MachineSpec_N2D_STANDARD_96,
        CpuMetric_MachineSpec_N2D_STANDARD_128,
        CpuMetric_MachineSpec_N2D_STANDARD_224,
        CpuMetric_MachineSpec_N2D_HIGHMEM_2,
        CpuMetric_MachineSpec_N2D_HIGHMEM_4,
        CpuMetric_MachineSpec_N2D_HIGHMEM_8,
        CpuMetric_MachineSpec_N2D_HIGHMEM_16,
        CpuMetric_MachineSpec_N2D_HIGHMEM_32,
        CpuMetric_MachineSpec_N2D_HIGHMEM_48,
        CpuMetric_MachineSpec_N2D_HIGHMEM_64,
        CpuMetric_MachineSpec_N2D_HIGHMEM_80,
        CpuMetric_MachineSpec_N2D_HIGHMEM_96,
        CpuMetric_MachineSpec_N2D_HIGHCPU_2,
        CpuMetric_MachineSpec_N2D_HIGHCPU_4,
        CpuMetric_MachineSpec_N2D_HIGHCPU_8,
        CpuMetric_MachineSpec_N2D_HIGHCPU_16,
        CpuMetric_MachineSpec_N2D_HIGHCPU_32,
        CpuMetric_MachineSpec_N2D_HIGHCPU_48,
        CpuMetric_MachineSpec_N2D_HIGHCPU_64,
        CpuMetric_MachineSpec_N2D_HIGHCPU_80,
        CpuMetric_MachineSpec_N2D_HIGHCPU_96,
        CpuMetric_MachineSpec_N2D_HIGHCPU_128,
        CpuMetric_MachineSpec_N2D_HIGHCPU_224,
        CpuMetric_MachineSpec_C2_STANDARD_4,
        CpuMetric_MachineSpec_C2_STANDARD_8,
        CpuMetric_MachineSpec_C2_STANDARD_16,
        CpuMetric_MachineSpec_C2_STANDARD_30,
        CpuMetric_MachineSpec_C2_STANDARD_60,
        CpuMetric_MachineSpec_C2D_STANDARD_2,
        CpuMetric_MachineSpec_C2D_STANDARD_4,
        CpuMetric_MachineSpec_C2D_STANDARD_8,
        CpuMetric_MachineSpec_C2D_STANDARD_16,
        CpuMetric_MachineSpec_C2D_STANDARD_32,
        CpuMetric_MachineSpec_C2D_STANDARD_56,
        CpuMetric_MachineSpec_C2D_STANDARD_112,
        CpuMetric_MachineSpec_C2D_HIGHCPU_2,
        CpuMetric_MachineSpec_C2D_HIGHCPU_4,
        CpuMetric_MachineSpec_C2D_HIGHCPU_8,
        CpuMetric_MachineSpec_C2D_HIGHCPU_16,
        CpuMetric_MachineSpec_C2D_HIGHCPU_32,
        CpuMetric_MachineSpec_C2D_HIGHCPU_56,
        CpuMetric_MachineSpec_C2D_HIGHCPU_112,
        CpuMetric_MachineSpec_C2D_HIGHMEM_2,
        CpuMetric_MachineSpec_C2D_HIGHMEM_4,
        CpuMetric_MachineSpec_C2D_HIGHMEM_8,
        CpuMetric_MachineSpec_C2D_HIGHMEM_16,
        CpuMetric_MachineSpec_C2D_HIGHMEM_32,
        CpuMetric_MachineSpec_C2D_HIGHMEM_56,
        CpuMetric_MachineSpec_C2D_HIGHMEM_112,
        CpuMetric_MachineSpec_G2_STANDARD_4,
        CpuMetric_MachineSpec_G2_STANDARD_8,
        CpuMetric_MachineSpec_G2_STANDARD_12,
        CpuMetric_MachineSpec_G2_STANDARD_16,
        CpuMetric_MachineSpec_G2_STANDARD_24,
        CpuMetric_MachineSpec_G2_STANDARD_32,
        CpuMetric_MachineSpec_G2_STANDARD_48,
        CpuMetric_MachineSpec_G2_STANDARD_96,
        CpuMetric_MachineSpec_C3_STANDARD_4,
        CpuMetric_MachineSpec_C3_STANDARD_8,
        CpuMetric_MachineSpec_C3_STANDARD_22,
        CpuMetric_MachineSpec_C3_STANDARD_44,
        CpuMetric_MachineSpec_C3_STANDARD_88,
        CpuMetric_MachineSpec_C3_STANDARD_176,
        CpuMetric_MachineSpec_C3_HIGHCPU_4,
        CpuMetric_MachineSpec_C3_HIGHCPU_8,
        CpuMetric_MachineSpec_C3_HIGHCPU_22,
        CpuMetric_MachineSpec_C3_HIGHCPU_44,
        CpuMetric_MachineSpec_C3_HIGHCPU_88,
        CpuMetric_MachineSpec_C3_HIGHCPU_176,
        CpuMetric_MachineSpec_C3_HIGHMEM_4,
        CpuMetric_MachineSpec_C3_HIGHMEM_8,
        CpuMetric_MachineSpec_C3_HIGHMEM_22,
        CpuMetric_MachineSpec_C3_HIGHMEM_44,
        CpuMetric_MachineSpec_C3_HIGHMEM_88,
        CpuMetric_MachineSpec_C3_HIGHMEM_176,
        ..
      ),

    -- * DiskMetric_DiskType
    DiskMetric_DiskType
      ( DiskMetric_DiskType_UNKNOWNDISKTYPE,
        DiskMetric_DiskType_REGIONALSSD,
        DiskMetric_DiskType_REGIONALSTORAGE,
        DiskMetric_DiskType_PDSSD,
        DiskMetric_DiskType_PDSTANDARD,
        DiskMetric_DiskType_STORAGESNAPSHOT,
        ..
      ),

    -- * Document_Type
    Document_Type
      ( Document_Type_TYPEUNSPECIFIED,
        Document_Type_PLAINTEXT,
        Document_Type_Html,
        ..
      ),

    -- * Entity_Type
    Entity_Type
      ( Entity_Type_Unknown,
        Entity_Type_Person,
        Entity_Type_Location,
        Entity_Type_Organization,
        Entity_Type_Event,
        Entity_Type_WORKOFART,
        Entity_Type_CONSUMERGOOD,
        Entity_Type_Other,
        Entity_Type_PHONENUMBER,
        Entity_Type_Address,
        Entity_Type_Date,
        Entity_Type_Number,
        Entity_Type_Price,
        ..
      ),

    -- * EntityMention_Type
    EntityMention_Type
      ( EntityMention_Type_TYPEUNKNOWN,
        EntityMention_Type_Proper,
        EntityMention_Type_Common,
        ..
      ),

    -- * GpuMetric_GpuType
    GpuMetric_GpuType
      ( GpuMetric_GpuType_UNKNOWNGPUTYPE,
        GpuMetric_GpuType_NVIDIA_TESLA_A100,
        GpuMetric_GpuType_NVIDIAA10080GB,
        GpuMetric_GpuType_NVIDIA_TESLA_K80,
        GpuMetric_GpuType_NVIDIA_L4,
        GpuMetric_GpuType_NVIDIA_TESLA_P100,
        GpuMetric_GpuType_NVIDIA_TESLA_P4,
        GpuMetric_GpuType_NVIDIA_TESLA_T4,
        GpuMetric_GpuType_NVIDIA_TESLA_V100,
        GpuMetric_GpuType_NVIDIAH10080GB,
        ..
      ),

    -- * GpuMetric_MachineSpec
    GpuMetric_MachineSpec
      ( GpuMetric_MachineSpec_UNKNOWNMACHINESPEC,
        GpuMetric_MachineSpec_N1_STANDARD_2,
        GpuMetric_MachineSpec_N1_STANDARD_4,
        GpuMetric_MachineSpec_N1_STANDARD_8,
        GpuMetric_MachineSpec_N1_STANDARD_16,
        GpuMetric_MachineSpec_N1_STANDARD_32,
        GpuMetric_MachineSpec_N1_STANDARD_64,
        GpuMetric_MachineSpec_N1_STANDARD_96,
        GpuMetric_MachineSpec_N1_HIGHMEM_2,
        GpuMetric_MachineSpec_N1_HIGHMEM_4,
        GpuMetric_MachineSpec_N1_HIGHMEM_8,
        GpuMetric_MachineSpec_N1_HIGHMEM_16,
        GpuMetric_MachineSpec_N1_HIGHMEM_32,
        GpuMetric_MachineSpec_N1_HIGHMEM_64,
        GpuMetric_MachineSpec_N1_HIGHMEM_96,
        GpuMetric_MachineSpec_N1_HIGHCPU_2,
        GpuMetric_MachineSpec_N1_HIGHCPU_4,
        GpuMetric_MachineSpec_N1_HIGHCPU_8,
        GpuMetric_MachineSpec_N1_HIGHCPU_16,
        GpuMetric_MachineSpec_N1_HIGHCPU_32,
        GpuMetric_MachineSpec_N1_HIGHCPU_64,
        GpuMetric_MachineSpec_N1_HIGHCPU_96,
        GpuMetric_MachineSpec_A2HIGHGPU1G,
        GpuMetric_MachineSpec_A2HIGHGPU2G,
        GpuMetric_MachineSpec_A2HIGHGPU4G,
        GpuMetric_MachineSpec_A2HIGHGPU8G,
        GpuMetric_MachineSpec_A2MEGAGPU16G,
        GpuMetric_MachineSpec_A2ULTRAGPU1G,
        GpuMetric_MachineSpec_A2ULTRAGPU2G,
        GpuMetric_MachineSpec_A2ULTRAGPU4G,
        GpuMetric_MachineSpec_A2ULTRAGPU8G,
        GpuMetric_MachineSpec_A3HIGHGPU1G,
        GpuMetric_MachineSpec_A3HIGHGPU2G,
        GpuMetric_MachineSpec_A3HIGHGPU4G,
        GpuMetric_MachineSpec_A3HIGHGPU8G,
        GpuMetric_MachineSpec_A3MEGAGPU8G,
        GpuMetric_MachineSpec_E2_STANDARD_2,
        GpuMetric_MachineSpec_E2_STANDARD_4,
        GpuMetric_MachineSpec_E2_STANDARD_8,
        GpuMetric_MachineSpec_E2_STANDARD_16,
        GpuMetric_MachineSpec_E2_STANDARD_32,
        GpuMetric_MachineSpec_E2_HIGHMEM_2,
        GpuMetric_MachineSpec_E2_HIGHMEM_4,
        GpuMetric_MachineSpec_E2_HIGHMEM_8,
        GpuMetric_MachineSpec_E2_HIGHMEM_16,
        GpuMetric_MachineSpec_E2_HIGHCPU_2,
        GpuMetric_MachineSpec_E2_HIGHCPU_4,
        GpuMetric_MachineSpec_E2_HIGHCPU_8,
        GpuMetric_MachineSpec_E2_HIGHCPU_16,
        GpuMetric_MachineSpec_E2_HIGHCPU_32,
        GpuMetric_MachineSpec_N2_STANDARD_2,
        GpuMetric_MachineSpec_N2_STANDARD_4,
        GpuMetric_MachineSpec_N2_STANDARD_8,
        GpuMetric_MachineSpec_N2_STANDARD_16,
        GpuMetric_MachineSpec_N2_STANDARD_32,
        GpuMetric_MachineSpec_N2_STANDARD_48,
        GpuMetric_MachineSpec_N2_STANDARD_64,
        GpuMetric_MachineSpec_N2_STANDARD_80,
        GpuMetric_MachineSpec_N2_STANDARD_96,
        GpuMetric_MachineSpec_N2_STANDARD_128,
        GpuMetric_MachineSpec_N2_HIGHMEM_2,
        GpuMetric_MachineSpec_N2_HIGHMEM_4,
        GpuMetric_MachineSpec_N2_HIGHMEM_8,
        GpuMetric_MachineSpec_N2_HIGHMEM_16,
        GpuMetric_MachineSpec_N2_HIGHMEM_32,
        GpuMetric_MachineSpec_N2_HIGHMEM_48,
        GpuMetric_MachineSpec_N2_HIGHMEM_64,
        GpuMetric_MachineSpec_N2_HIGHMEM_80,
        GpuMetric_MachineSpec_N2_HIGHMEM_96,
        GpuMetric_MachineSpec_N2_HIGHMEM_128,
        GpuMetric_MachineSpec_N2_HIGHCPU_2,
        GpuMetric_MachineSpec_N2_HIGHCPU_4,
        GpuMetric_MachineSpec_N2_HIGHCPU_8,
        GpuMetric_MachineSpec_N2_HIGHCPU_16,
        GpuMetric_MachineSpec_N2_HIGHCPU_32,
        GpuMetric_MachineSpec_N2_HIGHCPU_48,
        GpuMetric_MachineSpec_N2_HIGHCPU_64,
        GpuMetric_MachineSpec_N2_HIGHCPU_80,
        GpuMetric_MachineSpec_N2_HIGHCPU_96,
        GpuMetric_MachineSpec_N2D_STANDARD_2,
        GpuMetric_MachineSpec_N2D_STANDARD_4,
        GpuMetric_MachineSpec_N2D_STANDARD_8,
        GpuMetric_MachineSpec_N2D_STANDARD_16,
        GpuMetric_MachineSpec_N2D_STANDARD_32,
        GpuMetric_MachineSpec_N2D_STANDARD_48,
        GpuMetric_MachineSpec_N2D_STANDARD_64,
        GpuMetric_MachineSpec_N2D_STANDARD_80,
        GpuMetric_MachineSpec_N2D_STANDARD_96,
        GpuMetric_MachineSpec_N2D_STANDARD_128,
        GpuMetric_MachineSpec_N2D_STANDARD_224,
        GpuMetric_MachineSpec_N2D_HIGHMEM_2,
        GpuMetric_MachineSpec_N2D_HIGHMEM_4,
        GpuMetric_MachineSpec_N2D_HIGHMEM_8,
        GpuMetric_MachineSpec_N2D_HIGHMEM_16,
        GpuMetric_MachineSpec_N2D_HIGHMEM_32,
        GpuMetric_MachineSpec_N2D_HIGHMEM_48,
        GpuMetric_MachineSpec_N2D_HIGHMEM_64,
        GpuMetric_MachineSpec_N2D_HIGHMEM_80,
        GpuMetric_MachineSpec_N2D_HIGHMEM_96,
        GpuMetric_MachineSpec_N2D_HIGHCPU_2,
        GpuMetric_MachineSpec_N2D_HIGHCPU_4,
        GpuMetric_MachineSpec_N2D_HIGHCPU_8,
        GpuMetric_MachineSpec_N2D_HIGHCPU_16,
        GpuMetric_MachineSpec_N2D_HIGHCPU_32,
        GpuMetric_MachineSpec_N2D_HIGHCPU_48,
        GpuMetric_MachineSpec_N2D_HIGHCPU_64,
        GpuMetric_MachineSpec_N2D_HIGHCPU_80,
        GpuMetric_MachineSpec_N2D_HIGHCPU_96,
        GpuMetric_MachineSpec_N2D_HIGHCPU_128,
        GpuMetric_MachineSpec_N2D_HIGHCPU_224,
        GpuMetric_MachineSpec_C2_STANDARD_4,
        GpuMetric_MachineSpec_C2_STANDARD_8,
        GpuMetric_MachineSpec_C2_STANDARD_16,
        GpuMetric_MachineSpec_C2_STANDARD_30,
        GpuMetric_MachineSpec_C2_STANDARD_60,
        GpuMetric_MachineSpec_C2D_STANDARD_2,
        GpuMetric_MachineSpec_C2D_STANDARD_4,
        GpuMetric_MachineSpec_C2D_STANDARD_8,
        GpuMetric_MachineSpec_C2D_STANDARD_16,
        GpuMetric_MachineSpec_C2D_STANDARD_32,
        GpuMetric_MachineSpec_C2D_STANDARD_56,
        GpuMetric_MachineSpec_C2D_STANDARD_112,
        GpuMetric_MachineSpec_C2D_HIGHCPU_2,
        GpuMetric_MachineSpec_C2D_HIGHCPU_4,
        GpuMetric_MachineSpec_C2D_HIGHCPU_8,
        GpuMetric_MachineSpec_C2D_HIGHCPU_16,
        GpuMetric_MachineSpec_C2D_HIGHCPU_32,
        GpuMetric_MachineSpec_C2D_HIGHCPU_56,
        GpuMetric_MachineSpec_C2D_HIGHCPU_112,
        GpuMetric_MachineSpec_C2D_HIGHMEM_2,
        GpuMetric_MachineSpec_C2D_HIGHMEM_4,
        GpuMetric_MachineSpec_C2D_HIGHMEM_8,
        GpuMetric_MachineSpec_C2D_HIGHMEM_16,
        GpuMetric_MachineSpec_C2D_HIGHMEM_32,
        GpuMetric_MachineSpec_C2D_HIGHMEM_56,
        GpuMetric_MachineSpec_C2D_HIGHMEM_112,
        GpuMetric_MachineSpec_G2_STANDARD_4,
        GpuMetric_MachineSpec_G2_STANDARD_8,
        GpuMetric_MachineSpec_G2_STANDARD_12,
        GpuMetric_MachineSpec_G2_STANDARD_16,
        GpuMetric_MachineSpec_G2_STANDARD_24,
        GpuMetric_MachineSpec_G2_STANDARD_32,
        GpuMetric_MachineSpec_G2_STANDARD_48,
        GpuMetric_MachineSpec_G2_STANDARD_96,
        GpuMetric_MachineSpec_C3_STANDARD_4,
        GpuMetric_MachineSpec_C3_STANDARD_8,
        GpuMetric_MachineSpec_C3_STANDARD_22,
        GpuMetric_MachineSpec_C3_STANDARD_44,
        GpuMetric_MachineSpec_C3_STANDARD_88,
        GpuMetric_MachineSpec_C3_STANDARD_176,
        GpuMetric_MachineSpec_C3_HIGHCPU_4,
        GpuMetric_MachineSpec_C3_HIGHCPU_8,
        GpuMetric_MachineSpec_C3_HIGHCPU_22,
        GpuMetric_MachineSpec_C3_HIGHCPU_44,
        GpuMetric_MachineSpec_C3_HIGHCPU_88,
        GpuMetric_MachineSpec_C3_HIGHCPU_176,
        GpuMetric_MachineSpec_C3_HIGHMEM_4,
        GpuMetric_MachineSpec_C3_HIGHMEM_8,
        GpuMetric_MachineSpec_C3_HIGHMEM_22,
        GpuMetric_MachineSpec_C3_HIGHMEM_44,
        GpuMetric_MachineSpec_C3_HIGHMEM_88,
        GpuMetric_MachineSpec_C3_HIGHMEM_176,
        ..
      ),

    -- * ModerateTextRequest_ModelVersion
    ModerateTextRequest_ModelVersion
      ( ModerateTextRequest_ModelVersion_MODELVERSIONUNSPECIFIED,
        ModerateTextRequest_ModelVersion_MODEL_VERSION_1,
        ModerateTextRequest_ModelVersion_MODEL_VERSION_2,
        ..
      ),

    -- * RamMetric_MachineSpec
    RamMetric_MachineSpec
      ( RamMetric_MachineSpec_UNKNOWNMACHINESPEC,
        RamMetric_MachineSpec_N1_STANDARD_2,
        RamMetric_MachineSpec_N1_STANDARD_4,
        RamMetric_MachineSpec_N1_STANDARD_8,
        RamMetric_MachineSpec_N1_STANDARD_16,
        RamMetric_MachineSpec_N1_STANDARD_32,
        RamMetric_MachineSpec_N1_STANDARD_64,
        RamMetric_MachineSpec_N1_STANDARD_96,
        RamMetric_MachineSpec_N1_HIGHMEM_2,
        RamMetric_MachineSpec_N1_HIGHMEM_4,
        RamMetric_MachineSpec_N1_HIGHMEM_8,
        RamMetric_MachineSpec_N1_HIGHMEM_16,
        RamMetric_MachineSpec_N1_HIGHMEM_32,
        RamMetric_MachineSpec_N1_HIGHMEM_64,
        RamMetric_MachineSpec_N1_HIGHMEM_96,
        RamMetric_MachineSpec_N1_HIGHCPU_2,
        RamMetric_MachineSpec_N1_HIGHCPU_4,
        RamMetric_MachineSpec_N1_HIGHCPU_8,
        RamMetric_MachineSpec_N1_HIGHCPU_16,
        RamMetric_MachineSpec_N1_HIGHCPU_32,
        RamMetric_MachineSpec_N1_HIGHCPU_64,
        RamMetric_MachineSpec_N1_HIGHCPU_96,
        RamMetric_MachineSpec_A2HIGHGPU1G,
        RamMetric_MachineSpec_A2HIGHGPU2G,
        RamMetric_MachineSpec_A2HIGHGPU4G,
        RamMetric_MachineSpec_A2HIGHGPU8G,
        RamMetric_MachineSpec_A2MEGAGPU16G,
        RamMetric_MachineSpec_A2ULTRAGPU1G,
        RamMetric_MachineSpec_A2ULTRAGPU2G,
        RamMetric_MachineSpec_A2ULTRAGPU4G,
        RamMetric_MachineSpec_A2ULTRAGPU8G,
        RamMetric_MachineSpec_A3HIGHGPU1G,
        RamMetric_MachineSpec_A3HIGHGPU2G,
        RamMetric_MachineSpec_A3HIGHGPU4G,
        RamMetric_MachineSpec_A3HIGHGPU8G,
        RamMetric_MachineSpec_A3MEGAGPU8G,
        RamMetric_MachineSpec_E2_STANDARD_2,
        RamMetric_MachineSpec_E2_STANDARD_4,
        RamMetric_MachineSpec_E2_STANDARD_8,
        RamMetric_MachineSpec_E2_STANDARD_16,
        RamMetric_MachineSpec_E2_STANDARD_32,
        RamMetric_MachineSpec_E2_HIGHMEM_2,
        RamMetric_MachineSpec_E2_HIGHMEM_4,
        RamMetric_MachineSpec_E2_HIGHMEM_8,
        RamMetric_MachineSpec_E2_HIGHMEM_16,
        RamMetric_MachineSpec_E2_HIGHCPU_2,
        RamMetric_MachineSpec_E2_HIGHCPU_4,
        RamMetric_MachineSpec_E2_HIGHCPU_8,
        RamMetric_MachineSpec_E2_HIGHCPU_16,
        RamMetric_MachineSpec_E2_HIGHCPU_32,
        RamMetric_MachineSpec_N2_STANDARD_2,
        RamMetric_MachineSpec_N2_STANDARD_4,
        RamMetric_MachineSpec_N2_STANDARD_8,
        RamMetric_MachineSpec_N2_STANDARD_16,
        RamMetric_MachineSpec_N2_STANDARD_32,
        RamMetric_MachineSpec_N2_STANDARD_48,
        RamMetric_MachineSpec_N2_STANDARD_64,
        RamMetric_MachineSpec_N2_STANDARD_80,
        RamMetric_MachineSpec_N2_STANDARD_96,
        RamMetric_MachineSpec_N2_STANDARD_128,
        RamMetric_MachineSpec_N2_HIGHMEM_2,
        RamMetric_MachineSpec_N2_HIGHMEM_4,
        RamMetric_MachineSpec_N2_HIGHMEM_8,
        RamMetric_MachineSpec_N2_HIGHMEM_16,
        RamMetric_MachineSpec_N2_HIGHMEM_32,
        RamMetric_MachineSpec_N2_HIGHMEM_48,
        RamMetric_MachineSpec_N2_HIGHMEM_64,
        RamMetric_MachineSpec_N2_HIGHMEM_80,
        RamMetric_MachineSpec_N2_HIGHMEM_96,
        RamMetric_MachineSpec_N2_HIGHMEM_128,
        RamMetric_MachineSpec_N2_HIGHCPU_2,
        RamMetric_MachineSpec_N2_HIGHCPU_4,
        RamMetric_MachineSpec_N2_HIGHCPU_8,
        RamMetric_MachineSpec_N2_HIGHCPU_16,
        RamMetric_MachineSpec_N2_HIGHCPU_32,
        RamMetric_MachineSpec_N2_HIGHCPU_48,
        RamMetric_MachineSpec_N2_HIGHCPU_64,
        RamMetric_MachineSpec_N2_HIGHCPU_80,
        RamMetric_MachineSpec_N2_HIGHCPU_96,
        RamMetric_MachineSpec_N2D_STANDARD_2,
        RamMetric_MachineSpec_N2D_STANDARD_4,
        RamMetric_MachineSpec_N2D_STANDARD_8,
        RamMetric_MachineSpec_N2D_STANDARD_16,
        RamMetric_MachineSpec_N2D_STANDARD_32,
        RamMetric_MachineSpec_N2D_STANDARD_48,
        RamMetric_MachineSpec_N2D_STANDARD_64,
        RamMetric_MachineSpec_N2D_STANDARD_80,
        RamMetric_MachineSpec_N2D_STANDARD_96,
        RamMetric_MachineSpec_N2D_STANDARD_128,
        RamMetric_MachineSpec_N2D_STANDARD_224,
        RamMetric_MachineSpec_N2D_HIGHMEM_2,
        RamMetric_MachineSpec_N2D_HIGHMEM_4,
        RamMetric_MachineSpec_N2D_HIGHMEM_8,
        RamMetric_MachineSpec_N2D_HIGHMEM_16,
        RamMetric_MachineSpec_N2D_HIGHMEM_32,
        RamMetric_MachineSpec_N2D_HIGHMEM_48,
        RamMetric_MachineSpec_N2D_HIGHMEM_64,
        RamMetric_MachineSpec_N2D_HIGHMEM_80,
        RamMetric_MachineSpec_N2D_HIGHMEM_96,
        RamMetric_MachineSpec_N2D_HIGHCPU_2,
        RamMetric_MachineSpec_N2D_HIGHCPU_4,
        RamMetric_MachineSpec_N2D_HIGHCPU_8,
        RamMetric_MachineSpec_N2D_HIGHCPU_16,
        RamMetric_MachineSpec_N2D_HIGHCPU_32,
        RamMetric_MachineSpec_N2D_HIGHCPU_48,
        RamMetric_MachineSpec_N2D_HIGHCPU_64,
        RamMetric_MachineSpec_N2D_HIGHCPU_80,
        RamMetric_MachineSpec_N2D_HIGHCPU_96,
        RamMetric_MachineSpec_N2D_HIGHCPU_128,
        RamMetric_MachineSpec_N2D_HIGHCPU_224,
        RamMetric_MachineSpec_C2_STANDARD_4,
        RamMetric_MachineSpec_C2_STANDARD_8,
        RamMetric_MachineSpec_C2_STANDARD_16,
        RamMetric_MachineSpec_C2_STANDARD_30,
        RamMetric_MachineSpec_C2_STANDARD_60,
        RamMetric_MachineSpec_C2D_STANDARD_2,
        RamMetric_MachineSpec_C2D_STANDARD_4,
        RamMetric_MachineSpec_C2D_STANDARD_8,
        RamMetric_MachineSpec_C2D_STANDARD_16,
        RamMetric_MachineSpec_C2D_STANDARD_32,
        RamMetric_MachineSpec_C2D_STANDARD_56,
        RamMetric_MachineSpec_C2D_STANDARD_112,
        RamMetric_MachineSpec_C2D_HIGHCPU_2,
        RamMetric_MachineSpec_C2D_HIGHCPU_4,
        RamMetric_MachineSpec_C2D_HIGHCPU_8,
        RamMetric_MachineSpec_C2D_HIGHCPU_16,
        RamMetric_MachineSpec_C2D_HIGHCPU_32,
        RamMetric_MachineSpec_C2D_HIGHCPU_56,
        RamMetric_MachineSpec_C2D_HIGHCPU_112,
        RamMetric_MachineSpec_C2D_HIGHMEM_2,
        RamMetric_MachineSpec_C2D_HIGHMEM_4,
        RamMetric_MachineSpec_C2D_HIGHMEM_8,
        RamMetric_MachineSpec_C2D_HIGHMEM_16,
        RamMetric_MachineSpec_C2D_HIGHMEM_32,
        RamMetric_MachineSpec_C2D_HIGHMEM_56,
        RamMetric_MachineSpec_C2D_HIGHMEM_112,
        RamMetric_MachineSpec_G2_STANDARD_4,
        RamMetric_MachineSpec_G2_STANDARD_8,
        RamMetric_MachineSpec_G2_STANDARD_12,
        RamMetric_MachineSpec_G2_STANDARD_16,
        RamMetric_MachineSpec_G2_STANDARD_24,
        RamMetric_MachineSpec_G2_STANDARD_32,
        RamMetric_MachineSpec_G2_STANDARD_48,
        RamMetric_MachineSpec_G2_STANDARD_96,
        RamMetric_MachineSpec_C3_STANDARD_4,
        RamMetric_MachineSpec_C3_STANDARD_8,
        RamMetric_MachineSpec_C3_STANDARD_22,
        RamMetric_MachineSpec_C3_STANDARD_44,
        RamMetric_MachineSpec_C3_STANDARD_88,
        RamMetric_MachineSpec_C3_STANDARD_176,
        RamMetric_MachineSpec_C3_HIGHCPU_4,
        RamMetric_MachineSpec_C3_HIGHCPU_8,
        RamMetric_MachineSpec_C3_HIGHCPU_22,
        RamMetric_MachineSpec_C3_HIGHCPU_44,
        RamMetric_MachineSpec_C3_HIGHCPU_88,
        RamMetric_MachineSpec_C3_HIGHCPU_176,
        RamMetric_MachineSpec_C3_HIGHMEM_4,
        RamMetric_MachineSpec_C3_HIGHMEM_8,
        RamMetric_MachineSpec_C3_HIGHMEM_22,
        RamMetric_MachineSpec_C3_HIGHMEM_44,
        RamMetric_MachineSpec_C3_HIGHMEM_88,
        RamMetric_MachineSpec_C3_HIGHMEM_176,
        ..
      ),

    -- * RamMetric_RamType
    RamMetric_RamType
      ( RamMetric_RamType_UNKNOWNRAMTYPE,
        RamMetric_RamType_A2,
        RamMetric_RamType_A3,
        RamMetric_RamType_C2,
        RamMetric_RamType_C2D,
        RamMetric_RamType_Custom,
        RamMetric_RamType_E2,
        RamMetric_RamType_G2,
        RamMetric_RamType_C3,
        RamMetric_RamType_M2,
        RamMetric_RamType_M1,
        RamMetric_RamType_N1,
        RamMetric_RamType_N2CUSTOM,
        RamMetric_RamType_N2,
        RamMetric_RamType_N2D,
        ..
      ),

    -- * TpuMetric_TpuType
    TpuMetric_TpuType
      ( TpuMetric_TpuType_UNKNOWNTPUTYPE,
        TpuMetric_TpuType_TPUV2POD,
        TpuMetric_TpuType_TPU_V2,
        TpuMetric_TpuType_TPUV3POD,
        TpuMetric_TpuType_TPU_V3,
        TpuMetric_TpuType_TPUV5LITEPOD,
        ..
      ),

    -- * XPSColumnSpecForecastingMetadata_ColumnType
    XPSColumnSpecForecastingMetadata_ColumnType
      ( XPSColumnSpecForecastingMetadata_ColumnType_COLUMNTYPEUNSPECIFIED,
        XPSColumnSpecForecastingMetadata_ColumnType_Key,
        XPSColumnSpecForecastingMetadata_ColumnType_KEYMETADATA,
        XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTONLY,
        XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTANDFUTURE,
        ..
      ),

    -- * XPSDataErrors_ErrorType
    XPSDataErrors_ErrorType
      ( XPSDataErrors_ErrorType_ERRORTYPEUNSPECIFIED,
        XPSDataErrors_ErrorType_UNSUPPORTEDAUDIOFORMAT,
        XPSDataErrors_ErrorType_FILEEXTENSIONMISMATCHWITHAUDIOFORMAT,
        XPSDataErrors_ErrorType_FILETOOLARGE,
        XPSDataErrors_ErrorType_MISSINGTRANSCRIPTION,
        ..
      ),

    -- * XPSDataType_TypeCode
    XPSDataType_TypeCode
      ( XPSDataType_TypeCode_TYPECODEUNSPECIFIED,
        XPSDataType_TypeCode_FLOAT64,
        XPSDataType_TypeCode_Timestamp,
        XPSDataType_TypeCode_String,
        XPSDataType_TypeCode_Array,
        XPSDataType_TypeCode_Struct,
        XPSDataType_TypeCode_Category,
        ..
      ),

    -- * XPSDockerFormat_CpuArchitecture
    XPSDockerFormat_CpuArchitecture
      ( XPSDockerFormat_CpuArchitecture_CPUARCHITECTUREUNSPECIFIED,
        XPSDockerFormat_CpuArchitecture_CPU_ARCHITECTURE_X86_64,
        ..
      ),

    -- * XPSDockerFormat_GpuArchitecture
    XPSDockerFormat_GpuArchitecture
      ( XPSDockerFormat_GpuArchitecture_GPUARCHITECTUREUNSPECIFIED,
        XPSDockerFormat_GpuArchitecture_GPUARCHITECTURENVIDIA,
        ..
      ),

    -- * XPSFileSpec_FileFormat
    XPSFileSpec_FileFormat
      ( XPSFileSpec_FileFormat_FILEFORMATUNKNOWN,
        XPSFileSpec_FileFormat_FILEFORMATSSTABLE,
        XPSFileSpec_FileFormat_FILEFORMATTRANSLATIONRKV,
        XPSFileSpec_FileFormat_FILEFORMATRECORDIO,
        XPSFileSpec_FileFormat_FILEFORMATRAWCSV,
        XPSFileSpec_FileFormat_FILEFORMATRAWCAPACITOR,
        ..
      ),

    -- * XPSImageClassificationTrainResponse_StopReason
    XPSImageClassificationTrainResponse_StopReason
      ( XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED,
        XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED,
        XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED,
        XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED,
        ..
      ),

    -- * XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
    XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
      ( XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_Unspecified,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_K80,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P100,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_V100,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P4,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_T4,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_A100,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAA10080GB,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_L4,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH10080GB,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH100MEGA80GB,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V2,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V3,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV4POD,
        XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV5LITEPOD,
        ..
      ),

    -- * XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
    XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
      ( XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONTYPEUNSPECIFIED,
        XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONZERO,
        XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONREDUCEDHOMING,
        XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONJELLYFISH,
        XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCPU,
        XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCUSTOMSTORAGECPU,
        ..
      ),

    -- * XPSImageObjectDetectionModelSpec_StopReason
    XPSImageObjectDetectionModelSpec_StopReason
      ( XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONUNSPECIFIED,
        XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONBUDGETREACHED,
        XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELCONVERGED,
        XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED,
        ..
      ),

    -- * XPSImageSegmentationTrainResponse_StopReason
    XPSImageSegmentationTrainResponse_StopReason
      ( XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED,
        XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED,
        XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED,
        XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED,
        ..
      ),

    -- * XPSModelArtifactItem_ArtifactFormat
    XPSModelArtifactItem_ArtifactFormat
      ( XPSModelArtifactItem_ArtifactFormat_ARTIFACTFORMATUNSPECIFIED,
        XPSModelArtifactItem_ArtifactFormat_TFCHECKPOINT,
        XPSModelArtifactItem_ArtifactFormat_TFSAVEDMODEL,
        XPSModelArtifactItem_ArtifactFormat_TFLITE,
        XPSModelArtifactItem_ArtifactFormat_EDGETPUTFLITE,
        XPSModelArtifactItem_ArtifactFormat_TFJS,
        XPSModelArtifactItem_ArtifactFormat_COREML,
        ..
      ),

    -- * XPSResponseExplanationMetadataInputMetadata_Modality
    XPSResponseExplanationMetadataInputMetadata_Modality
      ( XPSResponseExplanationMetadataInputMetadata_Modality_MODALITYUNSPECIFIED,
        XPSResponseExplanationMetadataInputMetadata_Modality_Numeric,
        XPSResponseExplanationMetadataInputMetadata_Modality_Image,
        XPSResponseExplanationMetadataInputMetadata_Modality_Categorical,
        ..
      ),

    -- * XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
    XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
      ( XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED,
        XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_COMMANDANDSEARCH,
        XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_PHONECALL,
        XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Video,
        XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Default,
        ..
      ),

    -- * XPSSpeechModelSpecSubModelSpec_BiasingModelType
    XPSSpeechModelSpecSubModelSpec_BiasingModelType
      ( XPSSpeechModelSpecSubModelSpec_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED,
        XPSSpeechModelSpecSubModelSpec_BiasingModelType_COMMANDANDSEARCH,
        XPSSpeechModelSpecSubModelSpec_BiasingModelType_PHONECALL,
        XPSSpeechModelSpecSubModelSpec_BiasingModelType_Video,
        XPSSpeechModelSpecSubModelSpec_BiasingModelType_Default,
        ..
      ),

    -- * XPSTablesTrainingOperationMetadata_CreateModelStage
    XPSTablesTrainingOperationMetadata_CreateModelStage
      ( XPSTablesTrainingOperationMetadata_CreateModelStage_CREATEMODELSTAGEUNSPECIFIED,
        XPSTablesTrainingOperationMetadata_CreateModelStage_DATAPREPROCESSING,
        XPSTablesTrainingOperationMetadata_CreateModelStage_Training,
        XPSTablesTrainingOperationMetadata_CreateModelStage_Evaluating,
        XPSTablesTrainingOperationMetadata_CreateModelStage_MODELPOSTPROCESSING,
        ..
      ),

    -- * XPSTextComponentModel_Partition
    XPSTextComponentModel_Partition
      ( XPSTextComponentModel_Partition_PARTITIONTYPEUNSPECIFIED,
        XPSTextComponentModel_Partition_PARTITIONZERO,
        XPSTextComponentModel_Partition_PARTITIONREDUCEDHOMING,
        XPSTextComponentModel_Partition_PARTITIONJELLYFISH,
        XPSTextComponentModel_Partition_PARTITIONCPU,
        XPSTextComponentModel_Partition_PARTITIONCUSTOMSTORAGECPU,
        ..
      ),

    -- * XPSTextComponentModel_SubmodelType
    XPSTextComponentModel_SubmodelType
      ( XPSTextComponentModel_SubmodelType_TEXTMODELTYPEUNSPECIFIED,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPEDEFAULT,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPEMETAARCHITECT,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPEATC,
        XPSTextComponentModel_SubmodelType_TEXT_MODEL_TYPE_CLARA2,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPECHATBASE,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPESAFTSPANLABELING,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPETEXTEXTRACTION,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPERELATIONSHIPEXTRACTION,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPECOMPOSITE,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPEALLMODELS,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPEBERT,
        XPSTextComponentModel_SubmodelType_TEXTMODELTYPEENCPALM,
        ..
      ),

    -- * XPSTranslationTrainResponse_ModelType
    XPSTranslationTrainResponse_ModelType
      ( XPSTranslationTrainResponse_ModelType_MODELTYPEUNSPECIFIED,
        XPSTranslationTrainResponse_ModelType_Legacy,
        XPSTranslationTrainResponse_ModelType_Current,
        ..
      ),

    -- * XPSVisionErrorAnalysisConfig_QueryType
    XPSVisionErrorAnalysisConfig_QueryType
      ( XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEUNSPECIFIED,
        XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEALLSIMILAR,
        XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSSIMILAR,
        XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSDISSIMILAR,
        ..
      ),

    -- * XPSVisualization_ColorMap
    XPSVisualization_ColorMap
      ( XPSVisualization_ColorMap_COLORMAPUNSPECIFIED,
        XPSVisualization_ColorMap_PINKGREEN,
        XPSVisualization_ColorMap_Viridis,
        XPSVisualization_ColorMap_Red,
        XPSVisualization_ColorMap_Green,
        XPSVisualization_ColorMap_REDGREEN,
        XPSVisualization_ColorMap_PINKWHITEGREEN,
        ..
      ),

    -- * XPSVisualization_OverlayType
    XPSVisualization_OverlayType
      ( XPSVisualization_OverlayType_OVERLAYTYPEUNSPECIFIED,
        XPSVisualization_OverlayType_None,
        XPSVisualization_OverlayType_Original,
        XPSVisualization_OverlayType_Grayscale,
        XPSVisualization_OverlayType_MASKBLACK,
        ..
      ),

    -- * XPSVisualization_Polarity
    XPSVisualization_Polarity
      ( XPSVisualization_Polarity_POLARITYUNSPECIFIED,
        XPSVisualization_Polarity_Positive,
        XPSVisualization_Polarity_Negative,
        XPSVisualization_Polarity_Both,
        ..
      ),

    -- * XPSVisualization_Type
    XPSVisualization_Type
      ( XPSVisualization_Type_TYPEUNSPECIFIED,
        XPSVisualization_Type_Pixels,
        XPSVisualization_Type_Outlines,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The encoding type used by the API to calculate offsets.
newtype AnalyzeEntitiesRequest_EncodingType = AnalyzeEntitiesRequest_EncodingType {fromAnalyzeEntitiesRequest_EncodingType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnalyzeEntitiesRequest_EncodingType_None :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_None = AnalyzeEntitiesRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnalyzeEntitiesRequest_EncodingType_UTF8 :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_UTF8 = AnalyzeEntitiesRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnalyzeEntitiesRequest_EncodingType_UTF16 :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_UTF16 = AnalyzeEntitiesRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnalyzeEntitiesRequest_EncodingType_UTF32 :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_UTF32 = AnalyzeEntitiesRequest_EncodingType "UTF32"

{-# COMPLETE
  AnalyzeEntitiesRequest_EncodingType_None,
  AnalyzeEntitiesRequest_EncodingType_UTF8,
  AnalyzeEntitiesRequest_EncodingType_UTF16,
  AnalyzeEntitiesRequest_EncodingType_UTF32,
  AnalyzeEntitiesRequest_EncodingType
  #-}

-- | The encoding type used by the API to calculate sentence offsets.
newtype AnalyzeSentimentRequest_EncodingType = AnalyzeSentimentRequest_EncodingType {fromAnalyzeSentimentRequest_EncodingType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnalyzeSentimentRequest_EncodingType_None :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_None = AnalyzeSentimentRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnalyzeSentimentRequest_EncodingType_UTF8 :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_UTF8 = AnalyzeSentimentRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnalyzeSentimentRequest_EncodingType_UTF16 :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_UTF16 = AnalyzeSentimentRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnalyzeSentimentRequest_EncodingType_UTF32 :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_UTF32 = AnalyzeSentimentRequest_EncodingType "UTF32"

{-# COMPLETE
  AnalyzeSentimentRequest_EncodingType_None,
  AnalyzeSentimentRequest_EncodingType_UTF8,
  AnalyzeSentimentRequest_EncodingType_UTF16,
  AnalyzeSentimentRequest_EncodingType_UTF32,
  AnalyzeSentimentRequest_EncodingType
  #-}

-- | The encoding type used by the API to calculate offsets.
newtype AnnotateTextRequest_EncodingType = AnnotateTextRequest_EncodingType {fromAnnotateTextRequest_EncodingType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnnotateTextRequest_EncodingType_None :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_None = AnnotateTextRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnnotateTextRequest_EncodingType_UTF8 :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_UTF8 = AnnotateTextRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnnotateTextRequest_EncodingType_UTF16 :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_UTF16 = AnnotateTextRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnnotateTextRequest_EncodingType_UTF32 :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_UTF32 = AnnotateTextRequest_EncodingType "UTF32"

{-# COMPLETE
  AnnotateTextRequest_EncodingType_None,
  AnnotateTextRequest_EncodingType_UTF8,
  AnnotateTextRequest_EncodingType_UTF16,
  AnnotateTextRequest_EncodingType_UTF32,
  AnnotateTextRequest_EncodingType
  #-}

-- | Required. Type of cpu, e.g. N2.
newtype CpuMetric_CpuType = CpuMetric_CpuType {fromCpuMetric_CpuType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CpuMetric_CpuType_UNKNOWNCPUTYPE :: CpuMetric_CpuType
pattern CpuMetric_CpuType_UNKNOWNCPUTYPE = CpuMetric_CpuType "UNKNOWN_CPU_TYPE"

-- | GPU-based machine, skip quota reporting.
pattern CpuMetric_CpuType_A2 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_A2 = CpuMetric_CpuType "A2"

-- | GPU-based machine, skip quota reporting.
pattern CpuMetric_CpuType_A3 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_A3 = CpuMetric_CpuType "A3"

-- | COMPUTE_OPTIMIZED
pattern CpuMetric_CpuType_C2 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_C2 = CpuMetric_CpuType "C2"

pattern CpuMetric_CpuType_C2D :: CpuMetric_CpuType
pattern CpuMetric_CpuType_C2D = CpuMetric_CpuType "C2D"

pattern CpuMetric_CpuType_Custom :: CpuMetric_CpuType
pattern CpuMetric_CpuType_Custom = CpuMetric_CpuType "CUSTOM"

pattern CpuMetric_CpuType_E2 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_E2 = CpuMetric_CpuType "E2"

-- | GPU-based machine, skip quota reporting.
pattern CpuMetric_CpuType_G2 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_G2 = CpuMetric_CpuType "G2"

pattern CpuMetric_CpuType_C3 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_C3 = CpuMetric_CpuType "C3"

-- | MEMORY/OPTIMIZED/UPGRADE_PREMIUM
pattern CpuMetric_CpuType_M2 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_M2 = CpuMetric_CpuType "M2"

-- | MEMORY_OPTIMIZED
pattern CpuMetric_CpuType_M1 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_M1 = CpuMetric_CpuType "M1"

pattern CpuMetric_CpuType_N1 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_N1 = CpuMetric_CpuType "N1"

pattern CpuMetric_CpuType_N2CUSTOM :: CpuMetric_CpuType
pattern CpuMetric_CpuType_N2CUSTOM = CpuMetric_CpuType "N2_CUSTOM"

pattern CpuMetric_CpuType_N2 :: CpuMetric_CpuType
pattern CpuMetric_CpuType_N2 = CpuMetric_CpuType "N2"

pattern CpuMetric_CpuType_N2D :: CpuMetric_CpuType
pattern CpuMetric_CpuType_N2D = CpuMetric_CpuType "N2D"

{-# COMPLETE
  CpuMetric_CpuType_UNKNOWNCPUTYPE,
  CpuMetric_CpuType_A2,
  CpuMetric_CpuType_A3,
  CpuMetric_CpuType_C2,
  CpuMetric_CpuType_C2D,
  CpuMetric_CpuType_Custom,
  CpuMetric_CpuType_E2,
  CpuMetric_CpuType_G2,
  CpuMetric_CpuType_C3,
  CpuMetric_CpuType_M2,
  CpuMetric_CpuType_M1,
  CpuMetric_CpuType_N1,
  CpuMetric_CpuType_N2CUSTOM,
  CpuMetric_CpuType_N2,
  CpuMetric_CpuType_N2D,
  CpuMetric_CpuType
  #-}

-- | Required. Machine spec, e.g. N1/STANDARD/4.
newtype CpuMetric_MachineSpec = CpuMetric_MachineSpec {fromCpuMetric_MachineSpec :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CpuMetric_MachineSpec_UNKNOWNMACHINESPEC :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_UNKNOWNMACHINESPEC = CpuMetric_MachineSpec "UNKNOWN_MACHINE_SPEC"

pattern CpuMetric_MachineSpec_N1_STANDARD_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_STANDARD_2 = CpuMetric_MachineSpec "N1_STANDARD_2"

pattern CpuMetric_MachineSpec_N1_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_STANDARD_4 = CpuMetric_MachineSpec "N1_STANDARD_4"

pattern CpuMetric_MachineSpec_N1_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_STANDARD_8 = CpuMetric_MachineSpec "N1_STANDARD_8"

pattern CpuMetric_MachineSpec_N1_STANDARD_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_STANDARD_16 = CpuMetric_MachineSpec "N1_STANDARD_16"

pattern CpuMetric_MachineSpec_N1_STANDARD_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_STANDARD_32 = CpuMetric_MachineSpec "N1_STANDARD_32"

pattern CpuMetric_MachineSpec_N1_STANDARD_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_STANDARD_64 = CpuMetric_MachineSpec "N1_STANDARD_64"

pattern CpuMetric_MachineSpec_N1_STANDARD_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_STANDARD_96 = CpuMetric_MachineSpec "N1_STANDARD_96"

pattern CpuMetric_MachineSpec_N1_HIGHMEM_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHMEM_2 = CpuMetric_MachineSpec "N1_HIGHMEM_2"

pattern CpuMetric_MachineSpec_N1_HIGHMEM_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHMEM_4 = CpuMetric_MachineSpec "N1_HIGHMEM_4"

pattern CpuMetric_MachineSpec_N1_HIGHMEM_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHMEM_8 = CpuMetric_MachineSpec "N1_HIGHMEM_8"

pattern CpuMetric_MachineSpec_N1_HIGHMEM_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHMEM_16 = CpuMetric_MachineSpec "N1_HIGHMEM_16"

pattern CpuMetric_MachineSpec_N1_HIGHMEM_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHMEM_32 = CpuMetric_MachineSpec "N1_HIGHMEM_32"

pattern CpuMetric_MachineSpec_N1_HIGHMEM_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHMEM_64 = CpuMetric_MachineSpec "N1_HIGHMEM_64"

pattern CpuMetric_MachineSpec_N1_HIGHMEM_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHMEM_96 = CpuMetric_MachineSpec "N1_HIGHMEM_96"

pattern CpuMetric_MachineSpec_N1_HIGHCPU_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHCPU_2 = CpuMetric_MachineSpec "N1_HIGHCPU_2"

pattern CpuMetric_MachineSpec_N1_HIGHCPU_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHCPU_4 = CpuMetric_MachineSpec "N1_HIGHCPU_4"

pattern CpuMetric_MachineSpec_N1_HIGHCPU_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHCPU_8 = CpuMetric_MachineSpec "N1_HIGHCPU_8"

pattern CpuMetric_MachineSpec_N1_HIGHCPU_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHCPU_16 = CpuMetric_MachineSpec "N1_HIGHCPU_16"

pattern CpuMetric_MachineSpec_N1_HIGHCPU_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHCPU_32 = CpuMetric_MachineSpec "N1_HIGHCPU_32"

pattern CpuMetric_MachineSpec_N1_HIGHCPU_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHCPU_64 = CpuMetric_MachineSpec "N1_HIGHCPU_64"

pattern CpuMetric_MachineSpec_N1_HIGHCPU_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N1_HIGHCPU_96 = CpuMetric_MachineSpec "N1_HIGHCPU_96"

pattern CpuMetric_MachineSpec_A2HIGHGPU1G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2HIGHGPU1G = CpuMetric_MachineSpec "A2_HIGHGPU_1G"

pattern CpuMetric_MachineSpec_A2HIGHGPU2G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2HIGHGPU2G = CpuMetric_MachineSpec "A2_HIGHGPU_2G"

pattern CpuMetric_MachineSpec_A2HIGHGPU4G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2HIGHGPU4G = CpuMetric_MachineSpec "A2_HIGHGPU_4G"

pattern CpuMetric_MachineSpec_A2HIGHGPU8G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2HIGHGPU8G = CpuMetric_MachineSpec "A2_HIGHGPU_8G"

pattern CpuMetric_MachineSpec_A2MEGAGPU16G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2MEGAGPU16G = CpuMetric_MachineSpec "A2_MEGAGPU_16G"

pattern CpuMetric_MachineSpec_A2ULTRAGPU1G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2ULTRAGPU1G = CpuMetric_MachineSpec "A2_ULTRAGPU_1G"

pattern CpuMetric_MachineSpec_A2ULTRAGPU2G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2ULTRAGPU2G = CpuMetric_MachineSpec "A2_ULTRAGPU_2G"

pattern CpuMetric_MachineSpec_A2ULTRAGPU4G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2ULTRAGPU4G = CpuMetric_MachineSpec "A2_ULTRAGPU_4G"

pattern CpuMetric_MachineSpec_A2ULTRAGPU8G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A2ULTRAGPU8G = CpuMetric_MachineSpec "A2_ULTRAGPU_8G"

pattern CpuMetric_MachineSpec_A3HIGHGPU1G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A3HIGHGPU1G = CpuMetric_MachineSpec "A3_HIGHGPU_1G"

pattern CpuMetric_MachineSpec_A3HIGHGPU2G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A3HIGHGPU2G = CpuMetric_MachineSpec "A3_HIGHGPU_2G"

pattern CpuMetric_MachineSpec_A3HIGHGPU4G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A3HIGHGPU4G = CpuMetric_MachineSpec "A3_HIGHGPU_4G"

pattern CpuMetric_MachineSpec_A3HIGHGPU8G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A3HIGHGPU8G = CpuMetric_MachineSpec "A3_HIGHGPU_8G"

pattern CpuMetric_MachineSpec_A3MEGAGPU8G :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_A3MEGAGPU8G = CpuMetric_MachineSpec "A3_MEGAGPU_8G"

pattern CpuMetric_MachineSpec_E2_STANDARD_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_STANDARD_2 = CpuMetric_MachineSpec "E2_STANDARD_2"

pattern CpuMetric_MachineSpec_E2_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_STANDARD_4 = CpuMetric_MachineSpec "E2_STANDARD_4"

pattern CpuMetric_MachineSpec_E2_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_STANDARD_8 = CpuMetric_MachineSpec "E2_STANDARD_8"

pattern CpuMetric_MachineSpec_E2_STANDARD_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_STANDARD_16 = CpuMetric_MachineSpec "E2_STANDARD_16"

pattern CpuMetric_MachineSpec_E2_STANDARD_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_STANDARD_32 = CpuMetric_MachineSpec "E2_STANDARD_32"

pattern CpuMetric_MachineSpec_E2_HIGHMEM_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHMEM_2 = CpuMetric_MachineSpec "E2_HIGHMEM_2"

pattern CpuMetric_MachineSpec_E2_HIGHMEM_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHMEM_4 = CpuMetric_MachineSpec "E2_HIGHMEM_4"

pattern CpuMetric_MachineSpec_E2_HIGHMEM_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHMEM_8 = CpuMetric_MachineSpec "E2_HIGHMEM_8"

pattern CpuMetric_MachineSpec_E2_HIGHMEM_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHMEM_16 = CpuMetric_MachineSpec "E2_HIGHMEM_16"

pattern CpuMetric_MachineSpec_E2_HIGHCPU_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHCPU_2 = CpuMetric_MachineSpec "E2_HIGHCPU_2"

pattern CpuMetric_MachineSpec_E2_HIGHCPU_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHCPU_4 = CpuMetric_MachineSpec "E2_HIGHCPU_4"

pattern CpuMetric_MachineSpec_E2_HIGHCPU_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHCPU_8 = CpuMetric_MachineSpec "E2_HIGHCPU_8"

pattern CpuMetric_MachineSpec_E2_HIGHCPU_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHCPU_16 = CpuMetric_MachineSpec "E2_HIGHCPU_16"

pattern CpuMetric_MachineSpec_E2_HIGHCPU_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_E2_HIGHCPU_32 = CpuMetric_MachineSpec "E2_HIGHCPU_32"

pattern CpuMetric_MachineSpec_N2_STANDARD_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_2 = CpuMetric_MachineSpec "N2_STANDARD_2"

pattern CpuMetric_MachineSpec_N2_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_4 = CpuMetric_MachineSpec "N2_STANDARD_4"

pattern CpuMetric_MachineSpec_N2_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_8 = CpuMetric_MachineSpec "N2_STANDARD_8"

pattern CpuMetric_MachineSpec_N2_STANDARD_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_16 = CpuMetric_MachineSpec "N2_STANDARD_16"

pattern CpuMetric_MachineSpec_N2_STANDARD_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_32 = CpuMetric_MachineSpec "N2_STANDARD_32"

pattern CpuMetric_MachineSpec_N2_STANDARD_48 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_48 = CpuMetric_MachineSpec "N2_STANDARD_48"

pattern CpuMetric_MachineSpec_N2_STANDARD_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_64 = CpuMetric_MachineSpec "N2_STANDARD_64"

pattern CpuMetric_MachineSpec_N2_STANDARD_80 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_80 = CpuMetric_MachineSpec "N2_STANDARD_80"

pattern CpuMetric_MachineSpec_N2_STANDARD_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_96 = CpuMetric_MachineSpec "N2_STANDARD_96"

pattern CpuMetric_MachineSpec_N2_STANDARD_128 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_STANDARD_128 = CpuMetric_MachineSpec "N2_STANDARD_128"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_2 = CpuMetric_MachineSpec "N2_HIGHMEM_2"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_4 = CpuMetric_MachineSpec "N2_HIGHMEM_4"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_8 = CpuMetric_MachineSpec "N2_HIGHMEM_8"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_16 = CpuMetric_MachineSpec "N2_HIGHMEM_16"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_32 = CpuMetric_MachineSpec "N2_HIGHMEM_32"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_48 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_48 = CpuMetric_MachineSpec "N2_HIGHMEM_48"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_64 = CpuMetric_MachineSpec "N2_HIGHMEM_64"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_80 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_80 = CpuMetric_MachineSpec "N2_HIGHMEM_80"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_96 = CpuMetric_MachineSpec "N2_HIGHMEM_96"

pattern CpuMetric_MachineSpec_N2_HIGHMEM_128 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHMEM_128 = CpuMetric_MachineSpec "N2_HIGHMEM_128"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_2 = CpuMetric_MachineSpec "N2_HIGHCPU_2"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_4 = CpuMetric_MachineSpec "N2_HIGHCPU_4"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_8 = CpuMetric_MachineSpec "N2_HIGHCPU_8"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_16 = CpuMetric_MachineSpec "N2_HIGHCPU_16"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_32 = CpuMetric_MachineSpec "N2_HIGHCPU_32"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_48 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_48 = CpuMetric_MachineSpec "N2_HIGHCPU_48"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_64 = CpuMetric_MachineSpec "N2_HIGHCPU_64"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_80 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_80 = CpuMetric_MachineSpec "N2_HIGHCPU_80"

pattern CpuMetric_MachineSpec_N2_HIGHCPU_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2_HIGHCPU_96 = CpuMetric_MachineSpec "N2_HIGHCPU_96"

pattern CpuMetric_MachineSpec_N2D_STANDARD_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_2 = CpuMetric_MachineSpec "N2D_STANDARD_2"

pattern CpuMetric_MachineSpec_N2D_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_4 = CpuMetric_MachineSpec "N2D_STANDARD_4"

pattern CpuMetric_MachineSpec_N2D_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_8 = CpuMetric_MachineSpec "N2D_STANDARD_8"

pattern CpuMetric_MachineSpec_N2D_STANDARD_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_16 = CpuMetric_MachineSpec "N2D_STANDARD_16"

pattern CpuMetric_MachineSpec_N2D_STANDARD_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_32 = CpuMetric_MachineSpec "N2D_STANDARD_32"

pattern CpuMetric_MachineSpec_N2D_STANDARD_48 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_48 = CpuMetric_MachineSpec "N2D_STANDARD_48"

pattern CpuMetric_MachineSpec_N2D_STANDARD_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_64 = CpuMetric_MachineSpec "N2D_STANDARD_64"

pattern CpuMetric_MachineSpec_N2D_STANDARD_80 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_80 = CpuMetric_MachineSpec "N2D_STANDARD_80"

pattern CpuMetric_MachineSpec_N2D_STANDARD_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_96 = CpuMetric_MachineSpec "N2D_STANDARD_96"

pattern CpuMetric_MachineSpec_N2D_STANDARD_128 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_128 = CpuMetric_MachineSpec "N2D_STANDARD_128"

pattern CpuMetric_MachineSpec_N2D_STANDARD_224 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_STANDARD_224 = CpuMetric_MachineSpec "N2D_STANDARD_224"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_2 = CpuMetric_MachineSpec "N2D_HIGHMEM_2"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_4 = CpuMetric_MachineSpec "N2D_HIGHMEM_4"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_8 = CpuMetric_MachineSpec "N2D_HIGHMEM_8"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_16 = CpuMetric_MachineSpec "N2D_HIGHMEM_16"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_32 = CpuMetric_MachineSpec "N2D_HIGHMEM_32"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_48 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_48 = CpuMetric_MachineSpec "N2D_HIGHMEM_48"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_64 = CpuMetric_MachineSpec "N2D_HIGHMEM_64"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_80 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_80 = CpuMetric_MachineSpec "N2D_HIGHMEM_80"

pattern CpuMetric_MachineSpec_N2D_HIGHMEM_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHMEM_96 = CpuMetric_MachineSpec "N2D_HIGHMEM_96"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_2 = CpuMetric_MachineSpec "N2D_HIGHCPU_2"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_4 = CpuMetric_MachineSpec "N2D_HIGHCPU_4"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_8 = CpuMetric_MachineSpec "N2D_HIGHCPU_8"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_16 = CpuMetric_MachineSpec "N2D_HIGHCPU_16"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_32 = CpuMetric_MachineSpec "N2D_HIGHCPU_32"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_48 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_48 = CpuMetric_MachineSpec "N2D_HIGHCPU_48"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_64 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_64 = CpuMetric_MachineSpec "N2D_HIGHCPU_64"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_80 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_80 = CpuMetric_MachineSpec "N2D_HIGHCPU_80"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_96 = CpuMetric_MachineSpec "N2D_HIGHCPU_96"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_128 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_128 = CpuMetric_MachineSpec "N2D_HIGHCPU_128"

pattern CpuMetric_MachineSpec_N2D_HIGHCPU_224 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_N2D_HIGHCPU_224 = CpuMetric_MachineSpec "N2D_HIGHCPU_224"

pattern CpuMetric_MachineSpec_C2_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2_STANDARD_4 = CpuMetric_MachineSpec "C2_STANDARD_4"

pattern CpuMetric_MachineSpec_C2_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2_STANDARD_8 = CpuMetric_MachineSpec "C2_STANDARD_8"

pattern CpuMetric_MachineSpec_C2_STANDARD_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2_STANDARD_16 = CpuMetric_MachineSpec "C2_STANDARD_16"

pattern CpuMetric_MachineSpec_C2_STANDARD_30 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2_STANDARD_30 = CpuMetric_MachineSpec "C2_STANDARD_30"

pattern CpuMetric_MachineSpec_C2_STANDARD_60 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2_STANDARD_60 = CpuMetric_MachineSpec "C2_STANDARD_60"

pattern CpuMetric_MachineSpec_C2D_STANDARD_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_STANDARD_2 = CpuMetric_MachineSpec "C2D_STANDARD_2"

pattern CpuMetric_MachineSpec_C2D_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_STANDARD_4 = CpuMetric_MachineSpec "C2D_STANDARD_4"

pattern CpuMetric_MachineSpec_C2D_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_STANDARD_8 = CpuMetric_MachineSpec "C2D_STANDARD_8"

pattern CpuMetric_MachineSpec_C2D_STANDARD_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_STANDARD_16 = CpuMetric_MachineSpec "C2D_STANDARD_16"

pattern CpuMetric_MachineSpec_C2D_STANDARD_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_STANDARD_32 = CpuMetric_MachineSpec "C2D_STANDARD_32"

pattern CpuMetric_MachineSpec_C2D_STANDARD_56 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_STANDARD_56 = CpuMetric_MachineSpec "C2D_STANDARD_56"

pattern CpuMetric_MachineSpec_C2D_STANDARD_112 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_STANDARD_112 = CpuMetric_MachineSpec "C2D_STANDARD_112"

pattern CpuMetric_MachineSpec_C2D_HIGHCPU_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHCPU_2 = CpuMetric_MachineSpec "C2D_HIGHCPU_2"

pattern CpuMetric_MachineSpec_C2D_HIGHCPU_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHCPU_4 = CpuMetric_MachineSpec "C2D_HIGHCPU_4"

pattern CpuMetric_MachineSpec_C2D_HIGHCPU_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHCPU_8 = CpuMetric_MachineSpec "C2D_HIGHCPU_8"

pattern CpuMetric_MachineSpec_C2D_HIGHCPU_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHCPU_16 = CpuMetric_MachineSpec "C2D_HIGHCPU_16"

pattern CpuMetric_MachineSpec_C2D_HIGHCPU_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHCPU_32 = CpuMetric_MachineSpec "C2D_HIGHCPU_32"

pattern CpuMetric_MachineSpec_C2D_HIGHCPU_56 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHCPU_56 = CpuMetric_MachineSpec "C2D_HIGHCPU_56"

pattern CpuMetric_MachineSpec_C2D_HIGHCPU_112 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHCPU_112 = CpuMetric_MachineSpec "C2D_HIGHCPU_112"

pattern CpuMetric_MachineSpec_C2D_HIGHMEM_2 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHMEM_2 = CpuMetric_MachineSpec "C2D_HIGHMEM_2"

pattern CpuMetric_MachineSpec_C2D_HIGHMEM_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHMEM_4 = CpuMetric_MachineSpec "C2D_HIGHMEM_4"

pattern CpuMetric_MachineSpec_C2D_HIGHMEM_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHMEM_8 = CpuMetric_MachineSpec "C2D_HIGHMEM_8"

pattern CpuMetric_MachineSpec_C2D_HIGHMEM_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHMEM_16 = CpuMetric_MachineSpec "C2D_HIGHMEM_16"

pattern CpuMetric_MachineSpec_C2D_HIGHMEM_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHMEM_32 = CpuMetric_MachineSpec "C2D_HIGHMEM_32"

pattern CpuMetric_MachineSpec_C2D_HIGHMEM_56 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHMEM_56 = CpuMetric_MachineSpec "C2D_HIGHMEM_56"

pattern CpuMetric_MachineSpec_C2D_HIGHMEM_112 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C2D_HIGHMEM_112 = CpuMetric_MachineSpec "C2D_HIGHMEM_112"

pattern CpuMetric_MachineSpec_G2_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_4 = CpuMetric_MachineSpec "G2_STANDARD_4"

pattern CpuMetric_MachineSpec_G2_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_8 = CpuMetric_MachineSpec "G2_STANDARD_8"

pattern CpuMetric_MachineSpec_G2_STANDARD_12 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_12 = CpuMetric_MachineSpec "G2_STANDARD_12"

pattern CpuMetric_MachineSpec_G2_STANDARD_16 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_16 = CpuMetric_MachineSpec "G2_STANDARD_16"

pattern CpuMetric_MachineSpec_G2_STANDARD_24 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_24 = CpuMetric_MachineSpec "G2_STANDARD_24"

pattern CpuMetric_MachineSpec_G2_STANDARD_32 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_32 = CpuMetric_MachineSpec "G2_STANDARD_32"

pattern CpuMetric_MachineSpec_G2_STANDARD_48 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_48 = CpuMetric_MachineSpec "G2_STANDARD_48"

pattern CpuMetric_MachineSpec_G2_STANDARD_96 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_G2_STANDARD_96 = CpuMetric_MachineSpec "G2_STANDARD_96"

pattern CpuMetric_MachineSpec_C3_STANDARD_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_STANDARD_4 = CpuMetric_MachineSpec "C3_STANDARD_4"

pattern CpuMetric_MachineSpec_C3_STANDARD_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_STANDARD_8 = CpuMetric_MachineSpec "C3_STANDARD_8"

pattern CpuMetric_MachineSpec_C3_STANDARD_22 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_STANDARD_22 = CpuMetric_MachineSpec "C3_STANDARD_22"

pattern CpuMetric_MachineSpec_C3_STANDARD_44 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_STANDARD_44 = CpuMetric_MachineSpec "C3_STANDARD_44"

pattern CpuMetric_MachineSpec_C3_STANDARD_88 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_STANDARD_88 = CpuMetric_MachineSpec "C3_STANDARD_88"

pattern CpuMetric_MachineSpec_C3_STANDARD_176 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_STANDARD_176 = CpuMetric_MachineSpec "C3_STANDARD_176"

pattern CpuMetric_MachineSpec_C3_HIGHCPU_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHCPU_4 = CpuMetric_MachineSpec "C3_HIGHCPU_4"

pattern CpuMetric_MachineSpec_C3_HIGHCPU_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHCPU_8 = CpuMetric_MachineSpec "C3_HIGHCPU_8"

pattern CpuMetric_MachineSpec_C3_HIGHCPU_22 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHCPU_22 = CpuMetric_MachineSpec "C3_HIGHCPU_22"

pattern CpuMetric_MachineSpec_C3_HIGHCPU_44 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHCPU_44 = CpuMetric_MachineSpec "C3_HIGHCPU_44"

pattern CpuMetric_MachineSpec_C3_HIGHCPU_88 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHCPU_88 = CpuMetric_MachineSpec "C3_HIGHCPU_88"

pattern CpuMetric_MachineSpec_C3_HIGHCPU_176 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHCPU_176 = CpuMetric_MachineSpec "C3_HIGHCPU_176"

pattern CpuMetric_MachineSpec_C3_HIGHMEM_4 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHMEM_4 = CpuMetric_MachineSpec "C3_HIGHMEM_4"

pattern CpuMetric_MachineSpec_C3_HIGHMEM_8 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHMEM_8 = CpuMetric_MachineSpec "C3_HIGHMEM_8"

pattern CpuMetric_MachineSpec_C3_HIGHMEM_22 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHMEM_22 = CpuMetric_MachineSpec "C3_HIGHMEM_22"

pattern CpuMetric_MachineSpec_C3_HIGHMEM_44 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHMEM_44 = CpuMetric_MachineSpec "C3_HIGHMEM_44"

pattern CpuMetric_MachineSpec_C3_HIGHMEM_88 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHMEM_88 = CpuMetric_MachineSpec "C3_HIGHMEM_88"

pattern CpuMetric_MachineSpec_C3_HIGHMEM_176 :: CpuMetric_MachineSpec
pattern CpuMetric_MachineSpec_C3_HIGHMEM_176 = CpuMetric_MachineSpec "C3_HIGHMEM_176"

{-# COMPLETE
  CpuMetric_MachineSpec_UNKNOWNMACHINESPEC,
  CpuMetric_MachineSpec_N1_STANDARD_2,
  CpuMetric_MachineSpec_N1_STANDARD_4,
  CpuMetric_MachineSpec_N1_STANDARD_8,
  CpuMetric_MachineSpec_N1_STANDARD_16,
  CpuMetric_MachineSpec_N1_STANDARD_32,
  CpuMetric_MachineSpec_N1_STANDARD_64,
  CpuMetric_MachineSpec_N1_STANDARD_96,
  CpuMetric_MachineSpec_N1_HIGHMEM_2,
  CpuMetric_MachineSpec_N1_HIGHMEM_4,
  CpuMetric_MachineSpec_N1_HIGHMEM_8,
  CpuMetric_MachineSpec_N1_HIGHMEM_16,
  CpuMetric_MachineSpec_N1_HIGHMEM_32,
  CpuMetric_MachineSpec_N1_HIGHMEM_64,
  CpuMetric_MachineSpec_N1_HIGHMEM_96,
  CpuMetric_MachineSpec_N1_HIGHCPU_2,
  CpuMetric_MachineSpec_N1_HIGHCPU_4,
  CpuMetric_MachineSpec_N1_HIGHCPU_8,
  CpuMetric_MachineSpec_N1_HIGHCPU_16,
  CpuMetric_MachineSpec_N1_HIGHCPU_32,
  CpuMetric_MachineSpec_N1_HIGHCPU_64,
  CpuMetric_MachineSpec_N1_HIGHCPU_96,
  CpuMetric_MachineSpec_A2HIGHGPU1G,
  CpuMetric_MachineSpec_A2HIGHGPU2G,
  CpuMetric_MachineSpec_A2HIGHGPU4G,
  CpuMetric_MachineSpec_A2HIGHGPU8G,
  CpuMetric_MachineSpec_A2MEGAGPU16G,
  CpuMetric_MachineSpec_A2ULTRAGPU1G,
  CpuMetric_MachineSpec_A2ULTRAGPU2G,
  CpuMetric_MachineSpec_A2ULTRAGPU4G,
  CpuMetric_MachineSpec_A2ULTRAGPU8G,
  CpuMetric_MachineSpec_A3HIGHGPU1G,
  CpuMetric_MachineSpec_A3HIGHGPU2G,
  CpuMetric_MachineSpec_A3HIGHGPU4G,
  CpuMetric_MachineSpec_A3HIGHGPU8G,
  CpuMetric_MachineSpec_A3MEGAGPU8G,
  CpuMetric_MachineSpec_E2_STANDARD_2,
  CpuMetric_MachineSpec_E2_STANDARD_4,
  CpuMetric_MachineSpec_E2_STANDARD_8,
  CpuMetric_MachineSpec_E2_STANDARD_16,
  CpuMetric_MachineSpec_E2_STANDARD_32,
  CpuMetric_MachineSpec_E2_HIGHMEM_2,
  CpuMetric_MachineSpec_E2_HIGHMEM_4,
  CpuMetric_MachineSpec_E2_HIGHMEM_8,
  CpuMetric_MachineSpec_E2_HIGHMEM_16,
  CpuMetric_MachineSpec_E2_HIGHCPU_2,
  CpuMetric_MachineSpec_E2_HIGHCPU_4,
  CpuMetric_MachineSpec_E2_HIGHCPU_8,
  CpuMetric_MachineSpec_E2_HIGHCPU_16,
  CpuMetric_MachineSpec_E2_HIGHCPU_32,
  CpuMetric_MachineSpec_N2_STANDARD_2,
  CpuMetric_MachineSpec_N2_STANDARD_4,
  CpuMetric_MachineSpec_N2_STANDARD_8,
  CpuMetric_MachineSpec_N2_STANDARD_16,
  CpuMetric_MachineSpec_N2_STANDARD_32,
  CpuMetric_MachineSpec_N2_STANDARD_48,
  CpuMetric_MachineSpec_N2_STANDARD_64,
  CpuMetric_MachineSpec_N2_STANDARD_80,
  CpuMetric_MachineSpec_N2_STANDARD_96,
  CpuMetric_MachineSpec_N2_STANDARD_128,
  CpuMetric_MachineSpec_N2_HIGHMEM_2,
  CpuMetric_MachineSpec_N2_HIGHMEM_4,
  CpuMetric_MachineSpec_N2_HIGHMEM_8,
  CpuMetric_MachineSpec_N2_HIGHMEM_16,
  CpuMetric_MachineSpec_N2_HIGHMEM_32,
  CpuMetric_MachineSpec_N2_HIGHMEM_48,
  CpuMetric_MachineSpec_N2_HIGHMEM_64,
  CpuMetric_MachineSpec_N2_HIGHMEM_80,
  CpuMetric_MachineSpec_N2_HIGHMEM_96,
  CpuMetric_MachineSpec_N2_HIGHMEM_128,
  CpuMetric_MachineSpec_N2_HIGHCPU_2,
  CpuMetric_MachineSpec_N2_HIGHCPU_4,
  CpuMetric_MachineSpec_N2_HIGHCPU_8,
  CpuMetric_MachineSpec_N2_HIGHCPU_16,
  CpuMetric_MachineSpec_N2_HIGHCPU_32,
  CpuMetric_MachineSpec_N2_HIGHCPU_48,
  CpuMetric_MachineSpec_N2_HIGHCPU_64,
  CpuMetric_MachineSpec_N2_HIGHCPU_80,
  CpuMetric_MachineSpec_N2_HIGHCPU_96,
  CpuMetric_MachineSpec_N2D_STANDARD_2,
  CpuMetric_MachineSpec_N2D_STANDARD_4,
  CpuMetric_MachineSpec_N2D_STANDARD_8,
  CpuMetric_MachineSpec_N2D_STANDARD_16,
  CpuMetric_MachineSpec_N2D_STANDARD_32,
  CpuMetric_MachineSpec_N2D_STANDARD_48,
  CpuMetric_MachineSpec_N2D_STANDARD_64,
  CpuMetric_MachineSpec_N2D_STANDARD_80,
  CpuMetric_MachineSpec_N2D_STANDARD_96,
  CpuMetric_MachineSpec_N2D_STANDARD_128,
  CpuMetric_MachineSpec_N2D_STANDARD_224,
  CpuMetric_MachineSpec_N2D_HIGHMEM_2,
  CpuMetric_MachineSpec_N2D_HIGHMEM_4,
  CpuMetric_MachineSpec_N2D_HIGHMEM_8,
  CpuMetric_MachineSpec_N2D_HIGHMEM_16,
  CpuMetric_MachineSpec_N2D_HIGHMEM_32,
  CpuMetric_MachineSpec_N2D_HIGHMEM_48,
  CpuMetric_MachineSpec_N2D_HIGHMEM_64,
  CpuMetric_MachineSpec_N2D_HIGHMEM_80,
  CpuMetric_MachineSpec_N2D_HIGHMEM_96,
  CpuMetric_MachineSpec_N2D_HIGHCPU_2,
  CpuMetric_MachineSpec_N2D_HIGHCPU_4,
  CpuMetric_MachineSpec_N2D_HIGHCPU_8,
  CpuMetric_MachineSpec_N2D_HIGHCPU_16,
  CpuMetric_MachineSpec_N2D_HIGHCPU_32,
  CpuMetric_MachineSpec_N2D_HIGHCPU_48,
  CpuMetric_MachineSpec_N2D_HIGHCPU_64,
  CpuMetric_MachineSpec_N2D_HIGHCPU_80,
  CpuMetric_MachineSpec_N2D_HIGHCPU_96,
  CpuMetric_MachineSpec_N2D_HIGHCPU_128,
  CpuMetric_MachineSpec_N2D_HIGHCPU_224,
  CpuMetric_MachineSpec_C2_STANDARD_4,
  CpuMetric_MachineSpec_C2_STANDARD_8,
  CpuMetric_MachineSpec_C2_STANDARD_16,
  CpuMetric_MachineSpec_C2_STANDARD_30,
  CpuMetric_MachineSpec_C2_STANDARD_60,
  CpuMetric_MachineSpec_C2D_STANDARD_2,
  CpuMetric_MachineSpec_C2D_STANDARD_4,
  CpuMetric_MachineSpec_C2D_STANDARD_8,
  CpuMetric_MachineSpec_C2D_STANDARD_16,
  CpuMetric_MachineSpec_C2D_STANDARD_32,
  CpuMetric_MachineSpec_C2D_STANDARD_56,
  CpuMetric_MachineSpec_C2D_STANDARD_112,
  CpuMetric_MachineSpec_C2D_HIGHCPU_2,
  CpuMetric_MachineSpec_C2D_HIGHCPU_4,
  CpuMetric_MachineSpec_C2D_HIGHCPU_8,
  CpuMetric_MachineSpec_C2D_HIGHCPU_16,
  CpuMetric_MachineSpec_C2D_HIGHCPU_32,
  CpuMetric_MachineSpec_C2D_HIGHCPU_56,
  CpuMetric_MachineSpec_C2D_HIGHCPU_112,
  CpuMetric_MachineSpec_C2D_HIGHMEM_2,
  CpuMetric_MachineSpec_C2D_HIGHMEM_4,
  CpuMetric_MachineSpec_C2D_HIGHMEM_8,
  CpuMetric_MachineSpec_C2D_HIGHMEM_16,
  CpuMetric_MachineSpec_C2D_HIGHMEM_32,
  CpuMetric_MachineSpec_C2D_HIGHMEM_56,
  CpuMetric_MachineSpec_C2D_HIGHMEM_112,
  CpuMetric_MachineSpec_G2_STANDARD_4,
  CpuMetric_MachineSpec_G2_STANDARD_8,
  CpuMetric_MachineSpec_G2_STANDARD_12,
  CpuMetric_MachineSpec_G2_STANDARD_16,
  CpuMetric_MachineSpec_G2_STANDARD_24,
  CpuMetric_MachineSpec_G2_STANDARD_32,
  CpuMetric_MachineSpec_G2_STANDARD_48,
  CpuMetric_MachineSpec_G2_STANDARD_96,
  CpuMetric_MachineSpec_C3_STANDARD_4,
  CpuMetric_MachineSpec_C3_STANDARD_8,
  CpuMetric_MachineSpec_C3_STANDARD_22,
  CpuMetric_MachineSpec_C3_STANDARD_44,
  CpuMetric_MachineSpec_C3_STANDARD_88,
  CpuMetric_MachineSpec_C3_STANDARD_176,
  CpuMetric_MachineSpec_C3_HIGHCPU_4,
  CpuMetric_MachineSpec_C3_HIGHCPU_8,
  CpuMetric_MachineSpec_C3_HIGHCPU_22,
  CpuMetric_MachineSpec_C3_HIGHCPU_44,
  CpuMetric_MachineSpec_C3_HIGHCPU_88,
  CpuMetric_MachineSpec_C3_HIGHCPU_176,
  CpuMetric_MachineSpec_C3_HIGHMEM_4,
  CpuMetric_MachineSpec_C3_HIGHMEM_8,
  CpuMetric_MachineSpec_C3_HIGHMEM_22,
  CpuMetric_MachineSpec_C3_HIGHMEM_44,
  CpuMetric_MachineSpec_C3_HIGHMEM_88,
  CpuMetric_MachineSpec_C3_HIGHMEM_176,
  CpuMetric_MachineSpec
  #-}

-- | Required. Type of Disk, e.g. REGIONAL_SSD.
newtype DiskMetric_DiskType = DiskMetric_DiskType {fromDiskMetric_DiskType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern DiskMetric_DiskType_UNKNOWNDISKTYPE :: DiskMetric_DiskType
pattern DiskMetric_DiskType_UNKNOWNDISKTYPE = DiskMetric_DiskType "UNKNOWN_DISK_TYPE"

pattern DiskMetric_DiskType_REGIONALSSD :: DiskMetric_DiskType
pattern DiskMetric_DiskType_REGIONALSSD = DiskMetric_DiskType "REGIONAL_SSD"

pattern DiskMetric_DiskType_REGIONALSTORAGE :: DiskMetric_DiskType
pattern DiskMetric_DiskType_REGIONALSTORAGE = DiskMetric_DiskType "REGIONAL_STORAGE"

pattern DiskMetric_DiskType_PDSSD :: DiskMetric_DiskType
pattern DiskMetric_DiskType_PDSSD = DiskMetric_DiskType "PD_SSD"

pattern DiskMetric_DiskType_PDSTANDARD :: DiskMetric_DiskType
pattern DiskMetric_DiskType_PDSTANDARD = DiskMetric_DiskType "PD_STANDARD"

pattern DiskMetric_DiskType_STORAGESNAPSHOT :: DiskMetric_DiskType
pattern DiskMetric_DiskType_STORAGESNAPSHOT = DiskMetric_DiskType "STORAGE_SNAPSHOT"

{-# COMPLETE
  DiskMetric_DiskType_UNKNOWNDISKTYPE,
  DiskMetric_DiskType_REGIONALSSD,
  DiskMetric_DiskType_REGIONALSTORAGE,
  DiskMetric_DiskType_PDSSD,
  DiskMetric_DiskType_PDSTANDARD,
  DiskMetric_DiskType_STORAGESNAPSHOT,
  DiskMetric_DiskType
  #-}

-- | Required. If the type is not set or is @TYPE_UNSPECIFIED@, returns an @INVALID_ARGUMENT@ error.
newtype Document_Type = Document_Type {fromDocument_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The content type is not specified.
pattern Document_Type_TYPEUNSPECIFIED :: Document_Type
pattern Document_Type_TYPEUNSPECIFIED = Document_Type "TYPE_UNSPECIFIED"

-- | Plain text
pattern Document_Type_PLAINTEXT :: Document_Type
pattern Document_Type_PLAINTEXT = Document_Type "PLAIN_TEXT"

-- | HTML
pattern Document_Type_Html :: Document_Type
pattern Document_Type_Html = Document_Type "HTML"

{-# COMPLETE
  Document_Type_TYPEUNSPECIFIED,
  Document_Type_PLAINTEXT,
  Document_Type_Html,
  Document_Type
  #-}

-- | The entity type.
newtype Entity_Type = Entity_Type {fromEntity_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown
pattern Entity_Type_Unknown :: Entity_Type
pattern Entity_Type_Unknown = Entity_Type "UNKNOWN"

-- | Person
pattern Entity_Type_Person :: Entity_Type
pattern Entity_Type_Person = Entity_Type "PERSON"

-- | Location
pattern Entity_Type_Location :: Entity_Type
pattern Entity_Type_Location = Entity_Type "LOCATION"

-- | Organization
pattern Entity_Type_Organization :: Entity_Type
pattern Entity_Type_Organization = Entity_Type "ORGANIZATION"

-- | Event
pattern Entity_Type_Event :: Entity_Type
pattern Entity_Type_Event = Entity_Type "EVENT"

-- | Artwork
pattern Entity_Type_WORKOFART :: Entity_Type
pattern Entity_Type_WORKOFART = Entity_Type "WORK_OF_ART"

-- | Consumer product
pattern Entity_Type_CONSUMERGOOD :: Entity_Type
pattern Entity_Type_CONSUMERGOOD = Entity_Type "CONSUMER_GOOD"

-- | Other types of entities
pattern Entity_Type_Other :: Entity_Type
pattern Entity_Type_Other = Entity_Type "OTHER"

-- | Phone number The metadata lists the phone number, formatted according to local convention, plus whichever additional elements appear in the text: * @number@ - the actual number, broken down into sections as per local convention * @national_prefix@ - country code, if detected * @area_code@ - region or area code, if detected * @extension@ - phone extension (to be dialed after connection), if detected
pattern Entity_Type_PHONENUMBER :: Entity_Type
pattern Entity_Type_PHONENUMBER = Entity_Type "PHONE_NUMBER"

-- | Address The metadata identifies the street number and locality plus whichever additional elements appear in the text: * @street_number@ - street number * @locality@ - city or town * @street_name@ - street\/route name, if detected * @postal_code@ - postal code, if detected * @country@ - country, if detected * @broad_region@ - administrative area, such as the state, if detected * @narrow_region@ - smaller administrative area, such as county, if detected * @sublocality@ - used in Asian addresses to demark a district within a city, if detected
pattern Entity_Type_Address :: Entity_Type
pattern Entity_Type_Address = Entity_Type "ADDRESS"

-- | Date The metadata identifies the components of the date: * @year@ - four digit year, if detected * @month@ - two digit month number, if detected * @day@ - two digit day number, if detected
pattern Entity_Type_Date :: Entity_Type
pattern Entity_Type_Date = Entity_Type "DATE"

-- | Number The metadata is the number itself.
pattern Entity_Type_Number :: Entity_Type
pattern Entity_Type_Number = Entity_Type "NUMBER"

-- | Price The metadata identifies the @value@ and @currency@.
pattern Entity_Type_Price :: Entity_Type
pattern Entity_Type_Price = Entity_Type "PRICE"

{-# COMPLETE
  Entity_Type_Unknown,
  Entity_Type_Person,
  Entity_Type_Location,
  Entity_Type_Organization,
  Entity_Type_Event,
  Entity_Type_WORKOFART,
  Entity_Type_CONSUMERGOOD,
  Entity_Type_Other,
  Entity_Type_PHONENUMBER,
  Entity_Type_Address,
  Entity_Type_Date,
  Entity_Type_Number,
  Entity_Type_Price,
  Entity_Type
  #-}

-- | The type of the entity mention.
newtype EntityMention_Type = EntityMention_Type {fromEntityMention_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown
pattern EntityMention_Type_TYPEUNKNOWN :: EntityMention_Type
pattern EntityMention_Type_TYPEUNKNOWN = EntityMention_Type "TYPE_UNKNOWN"

-- | Proper name
pattern EntityMention_Type_Proper :: EntityMention_Type
pattern EntityMention_Type_Proper = EntityMention_Type "PROPER"

-- | Common noun (or noun compound)
pattern EntityMention_Type_Common :: EntityMention_Type
pattern EntityMention_Type_Common = EntityMention_Type "COMMON"

{-# COMPLETE
  EntityMention_Type_TYPEUNKNOWN,
  EntityMention_Type_Proper,
  EntityMention_Type_Common,
  EntityMention_Type
  #-}

-- | Required. Type of GPU, e.g. NVIDIA/TESLA/V100.
newtype GpuMetric_GpuType = GpuMetric_GpuType {fromGpuMetric_GpuType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern GpuMetric_GpuType_UNKNOWNGPUTYPE :: GpuMetric_GpuType
pattern GpuMetric_GpuType_UNKNOWNGPUTYPE = GpuMetric_GpuType "UNKNOWN_GPU_TYPE"

pattern GpuMetric_GpuType_NVIDIA_TESLA_A100 :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIA_TESLA_A100 = GpuMetric_GpuType "NVIDIA_TESLA_A100"

pattern GpuMetric_GpuType_NVIDIAA10080GB :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIAA10080GB = GpuMetric_GpuType "NVIDIA_A100_80GB"

pattern GpuMetric_GpuType_NVIDIA_TESLA_K80 :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIA_TESLA_K80 = GpuMetric_GpuType "NVIDIA_TESLA_K80"

pattern GpuMetric_GpuType_NVIDIA_L4 :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIA_L4 = GpuMetric_GpuType "NVIDIA_L4"

pattern GpuMetric_GpuType_NVIDIA_TESLA_P100 :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIA_TESLA_P100 = GpuMetric_GpuType "NVIDIA_TESLA_P100"

pattern GpuMetric_GpuType_NVIDIA_TESLA_P4 :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIA_TESLA_P4 = GpuMetric_GpuType "NVIDIA_TESLA_P4"

pattern GpuMetric_GpuType_NVIDIA_TESLA_T4 :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIA_TESLA_T4 = GpuMetric_GpuType "NVIDIA_TESLA_T4"

pattern GpuMetric_GpuType_NVIDIA_TESLA_V100 :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIA_TESLA_V100 = GpuMetric_GpuType "NVIDIA_TESLA_V100"

pattern GpuMetric_GpuType_NVIDIAH10080GB :: GpuMetric_GpuType
pattern GpuMetric_GpuType_NVIDIAH10080GB = GpuMetric_GpuType "NVIDIA_H100_80GB"

{-# COMPLETE
  GpuMetric_GpuType_UNKNOWNGPUTYPE,
  GpuMetric_GpuType_NVIDIA_TESLA_A100,
  GpuMetric_GpuType_NVIDIAA10080GB,
  GpuMetric_GpuType_NVIDIA_TESLA_K80,
  GpuMetric_GpuType_NVIDIA_L4,
  GpuMetric_GpuType_NVIDIA_TESLA_P100,
  GpuMetric_GpuType_NVIDIA_TESLA_P4,
  GpuMetric_GpuType_NVIDIA_TESLA_T4,
  GpuMetric_GpuType_NVIDIA_TESLA_V100,
  GpuMetric_GpuType_NVIDIAH10080GB,
  GpuMetric_GpuType
  #-}

-- | Required. Machine spec, e.g. N1/STANDARD/4.
newtype GpuMetric_MachineSpec = GpuMetric_MachineSpec {fromGpuMetric_MachineSpec :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern GpuMetric_MachineSpec_UNKNOWNMACHINESPEC :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_UNKNOWNMACHINESPEC = GpuMetric_MachineSpec "UNKNOWN_MACHINE_SPEC"

pattern GpuMetric_MachineSpec_N1_STANDARD_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_STANDARD_2 = GpuMetric_MachineSpec "N1_STANDARD_2"

pattern GpuMetric_MachineSpec_N1_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_STANDARD_4 = GpuMetric_MachineSpec "N1_STANDARD_4"

pattern GpuMetric_MachineSpec_N1_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_STANDARD_8 = GpuMetric_MachineSpec "N1_STANDARD_8"

pattern GpuMetric_MachineSpec_N1_STANDARD_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_STANDARD_16 = GpuMetric_MachineSpec "N1_STANDARD_16"

pattern GpuMetric_MachineSpec_N1_STANDARD_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_STANDARD_32 = GpuMetric_MachineSpec "N1_STANDARD_32"

pattern GpuMetric_MachineSpec_N1_STANDARD_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_STANDARD_64 = GpuMetric_MachineSpec "N1_STANDARD_64"

pattern GpuMetric_MachineSpec_N1_STANDARD_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_STANDARD_96 = GpuMetric_MachineSpec "N1_STANDARD_96"

pattern GpuMetric_MachineSpec_N1_HIGHMEM_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHMEM_2 = GpuMetric_MachineSpec "N1_HIGHMEM_2"

pattern GpuMetric_MachineSpec_N1_HIGHMEM_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHMEM_4 = GpuMetric_MachineSpec "N1_HIGHMEM_4"

pattern GpuMetric_MachineSpec_N1_HIGHMEM_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHMEM_8 = GpuMetric_MachineSpec "N1_HIGHMEM_8"

pattern GpuMetric_MachineSpec_N1_HIGHMEM_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHMEM_16 = GpuMetric_MachineSpec "N1_HIGHMEM_16"

pattern GpuMetric_MachineSpec_N1_HIGHMEM_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHMEM_32 = GpuMetric_MachineSpec "N1_HIGHMEM_32"

pattern GpuMetric_MachineSpec_N1_HIGHMEM_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHMEM_64 = GpuMetric_MachineSpec "N1_HIGHMEM_64"

pattern GpuMetric_MachineSpec_N1_HIGHMEM_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHMEM_96 = GpuMetric_MachineSpec "N1_HIGHMEM_96"

pattern GpuMetric_MachineSpec_N1_HIGHCPU_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHCPU_2 = GpuMetric_MachineSpec "N1_HIGHCPU_2"

pattern GpuMetric_MachineSpec_N1_HIGHCPU_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHCPU_4 = GpuMetric_MachineSpec "N1_HIGHCPU_4"

pattern GpuMetric_MachineSpec_N1_HIGHCPU_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHCPU_8 = GpuMetric_MachineSpec "N1_HIGHCPU_8"

pattern GpuMetric_MachineSpec_N1_HIGHCPU_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHCPU_16 = GpuMetric_MachineSpec "N1_HIGHCPU_16"

pattern GpuMetric_MachineSpec_N1_HIGHCPU_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHCPU_32 = GpuMetric_MachineSpec "N1_HIGHCPU_32"

pattern GpuMetric_MachineSpec_N1_HIGHCPU_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHCPU_64 = GpuMetric_MachineSpec "N1_HIGHCPU_64"

pattern GpuMetric_MachineSpec_N1_HIGHCPU_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N1_HIGHCPU_96 = GpuMetric_MachineSpec "N1_HIGHCPU_96"

pattern GpuMetric_MachineSpec_A2HIGHGPU1G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2HIGHGPU1G = GpuMetric_MachineSpec "A2_HIGHGPU_1G"

pattern GpuMetric_MachineSpec_A2HIGHGPU2G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2HIGHGPU2G = GpuMetric_MachineSpec "A2_HIGHGPU_2G"

pattern GpuMetric_MachineSpec_A2HIGHGPU4G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2HIGHGPU4G = GpuMetric_MachineSpec "A2_HIGHGPU_4G"

pattern GpuMetric_MachineSpec_A2HIGHGPU8G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2HIGHGPU8G = GpuMetric_MachineSpec "A2_HIGHGPU_8G"

pattern GpuMetric_MachineSpec_A2MEGAGPU16G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2MEGAGPU16G = GpuMetric_MachineSpec "A2_MEGAGPU_16G"

pattern GpuMetric_MachineSpec_A2ULTRAGPU1G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2ULTRAGPU1G = GpuMetric_MachineSpec "A2_ULTRAGPU_1G"

pattern GpuMetric_MachineSpec_A2ULTRAGPU2G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2ULTRAGPU2G = GpuMetric_MachineSpec "A2_ULTRAGPU_2G"

pattern GpuMetric_MachineSpec_A2ULTRAGPU4G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2ULTRAGPU4G = GpuMetric_MachineSpec "A2_ULTRAGPU_4G"

pattern GpuMetric_MachineSpec_A2ULTRAGPU8G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A2ULTRAGPU8G = GpuMetric_MachineSpec "A2_ULTRAGPU_8G"

pattern GpuMetric_MachineSpec_A3HIGHGPU1G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A3HIGHGPU1G = GpuMetric_MachineSpec "A3_HIGHGPU_1G"

pattern GpuMetric_MachineSpec_A3HIGHGPU2G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A3HIGHGPU2G = GpuMetric_MachineSpec "A3_HIGHGPU_2G"

pattern GpuMetric_MachineSpec_A3HIGHGPU4G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A3HIGHGPU4G = GpuMetric_MachineSpec "A3_HIGHGPU_4G"

pattern GpuMetric_MachineSpec_A3HIGHGPU8G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A3HIGHGPU8G = GpuMetric_MachineSpec "A3_HIGHGPU_8G"

pattern GpuMetric_MachineSpec_A3MEGAGPU8G :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_A3MEGAGPU8G = GpuMetric_MachineSpec "A3_MEGAGPU_8G"

pattern GpuMetric_MachineSpec_E2_STANDARD_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_STANDARD_2 = GpuMetric_MachineSpec "E2_STANDARD_2"

pattern GpuMetric_MachineSpec_E2_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_STANDARD_4 = GpuMetric_MachineSpec "E2_STANDARD_4"

pattern GpuMetric_MachineSpec_E2_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_STANDARD_8 = GpuMetric_MachineSpec "E2_STANDARD_8"

pattern GpuMetric_MachineSpec_E2_STANDARD_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_STANDARD_16 = GpuMetric_MachineSpec "E2_STANDARD_16"

pattern GpuMetric_MachineSpec_E2_STANDARD_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_STANDARD_32 = GpuMetric_MachineSpec "E2_STANDARD_32"

pattern GpuMetric_MachineSpec_E2_HIGHMEM_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHMEM_2 = GpuMetric_MachineSpec "E2_HIGHMEM_2"

pattern GpuMetric_MachineSpec_E2_HIGHMEM_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHMEM_4 = GpuMetric_MachineSpec "E2_HIGHMEM_4"

pattern GpuMetric_MachineSpec_E2_HIGHMEM_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHMEM_8 = GpuMetric_MachineSpec "E2_HIGHMEM_8"

pattern GpuMetric_MachineSpec_E2_HIGHMEM_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHMEM_16 = GpuMetric_MachineSpec "E2_HIGHMEM_16"

pattern GpuMetric_MachineSpec_E2_HIGHCPU_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHCPU_2 = GpuMetric_MachineSpec "E2_HIGHCPU_2"

pattern GpuMetric_MachineSpec_E2_HIGHCPU_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHCPU_4 = GpuMetric_MachineSpec "E2_HIGHCPU_4"

pattern GpuMetric_MachineSpec_E2_HIGHCPU_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHCPU_8 = GpuMetric_MachineSpec "E2_HIGHCPU_8"

pattern GpuMetric_MachineSpec_E2_HIGHCPU_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHCPU_16 = GpuMetric_MachineSpec "E2_HIGHCPU_16"

pattern GpuMetric_MachineSpec_E2_HIGHCPU_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_E2_HIGHCPU_32 = GpuMetric_MachineSpec "E2_HIGHCPU_32"

pattern GpuMetric_MachineSpec_N2_STANDARD_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_2 = GpuMetric_MachineSpec "N2_STANDARD_2"

pattern GpuMetric_MachineSpec_N2_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_4 = GpuMetric_MachineSpec "N2_STANDARD_4"

pattern GpuMetric_MachineSpec_N2_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_8 = GpuMetric_MachineSpec "N2_STANDARD_8"

pattern GpuMetric_MachineSpec_N2_STANDARD_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_16 = GpuMetric_MachineSpec "N2_STANDARD_16"

pattern GpuMetric_MachineSpec_N2_STANDARD_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_32 = GpuMetric_MachineSpec "N2_STANDARD_32"

pattern GpuMetric_MachineSpec_N2_STANDARD_48 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_48 = GpuMetric_MachineSpec "N2_STANDARD_48"

pattern GpuMetric_MachineSpec_N2_STANDARD_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_64 = GpuMetric_MachineSpec "N2_STANDARD_64"

pattern GpuMetric_MachineSpec_N2_STANDARD_80 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_80 = GpuMetric_MachineSpec "N2_STANDARD_80"

pattern GpuMetric_MachineSpec_N2_STANDARD_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_96 = GpuMetric_MachineSpec "N2_STANDARD_96"

pattern GpuMetric_MachineSpec_N2_STANDARD_128 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_STANDARD_128 = GpuMetric_MachineSpec "N2_STANDARD_128"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_2 = GpuMetric_MachineSpec "N2_HIGHMEM_2"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_4 = GpuMetric_MachineSpec "N2_HIGHMEM_4"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_8 = GpuMetric_MachineSpec "N2_HIGHMEM_8"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_16 = GpuMetric_MachineSpec "N2_HIGHMEM_16"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_32 = GpuMetric_MachineSpec "N2_HIGHMEM_32"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_48 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_48 = GpuMetric_MachineSpec "N2_HIGHMEM_48"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_64 = GpuMetric_MachineSpec "N2_HIGHMEM_64"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_80 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_80 = GpuMetric_MachineSpec "N2_HIGHMEM_80"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_96 = GpuMetric_MachineSpec "N2_HIGHMEM_96"

pattern GpuMetric_MachineSpec_N2_HIGHMEM_128 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHMEM_128 = GpuMetric_MachineSpec "N2_HIGHMEM_128"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_2 = GpuMetric_MachineSpec "N2_HIGHCPU_2"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_4 = GpuMetric_MachineSpec "N2_HIGHCPU_4"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_8 = GpuMetric_MachineSpec "N2_HIGHCPU_8"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_16 = GpuMetric_MachineSpec "N2_HIGHCPU_16"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_32 = GpuMetric_MachineSpec "N2_HIGHCPU_32"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_48 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_48 = GpuMetric_MachineSpec "N2_HIGHCPU_48"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_64 = GpuMetric_MachineSpec "N2_HIGHCPU_64"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_80 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_80 = GpuMetric_MachineSpec "N2_HIGHCPU_80"

pattern GpuMetric_MachineSpec_N2_HIGHCPU_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2_HIGHCPU_96 = GpuMetric_MachineSpec "N2_HIGHCPU_96"

pattern GpuMetric_MachineSpec_N2D_STANDARD_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_2 = GpuMetric_MachineSpec "N2D_STANDARD_2"

pattern GpuMetric_MachineSpec_N2D_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_4 = GpuMetric_MachineSpec "N2D_STANDARD_4"

pattern GpuMetric_MachineSpec_N2D_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_8 = GpuMetric_MachineSpec "N2D_STANDARD_8"

pattern GpuMetric_MachineSpec_N2D_STANDARD_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_16 = GpuMetric_MachineSpec "N2D_STANDARD_16"

pattern GpuMetric_MachineSpec_N2D_STANDARD_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_32 = GpuMetric_MachineSpec "N2D_STANDARD_32"

pattern GpuMetric_MachineSpec_N2D_STANDARD_48 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_48 = GpuMetric_MachineSpec "N2D_STANDARD_48"

pattern GpuMetric_MachineSpec_N2D_STANDARD_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_64 = GpuMetric_MachineSpec "N2D_STANDARD_64"

pattern GpuMetric_MachineSpec_N2D_STANDARD_80 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_80 = GpuMetric_MachineSpec "N2D_STANDARD_80"

pattern GpuMetric_MachineSpec_N2D_STANDARD_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_96 = GpuMetric_MachineSpec "N2D_STANDARD_96"

pattern GpuMetric_MachineSpec_N2D_STANDARD_128 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_128 = GpuMetric_MachineSpec "N2D_STANDARD_128"

pattern GpuMetric_MachineSpec_N2D_STANDARD_224 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_STANDARD_224 = GpuMetric_MachineSpec "N2D_STANDARD_224"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_2 = GpuMetric_MachineSpec "N2D_HIGHMEM_2"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_4 = GpuMetric_MachineSpec "N2D_HIGHMEM_4"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_8 = GpuMetric_MachineSpec "N2D_HIGHMEM_8"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_16 = GpuMetric_MachineSpec "N2D_HIGHMEM_16"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_32 = GpuMetric_MachineSpec "N2D_HIGHMEM_32"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_48 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_48 = GpuMetric_MachineSpec "N2D_HIGHMEM_48"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_64 = GpuMetric_MachineSpec "N2D_HIGHMEM_64"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_80 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_80 = GpuMetric_MachineSpec "N2D_HIGHMEM_80"

pattern GpuMetric_MachineSpec_N2D_HIGHMEM_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHMEM_96 = GpuMetric_MachineSpec "N2D_HIGHMEM_96"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_2 = GpuMetric_MachineSpec "N2D_HIGHCPU_2"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_4 = GpuMetric_MachineSpec "N2D_HIGHCPU_4"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_8 = GpuMetric_MachineSpec "N2D_HIGHCPU_8"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_16 = GpuMetric_MachineSpec "N2D_HIGHCPU_16"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_32 = GpuMetric_MachineSpec "N2D_HIGHCPU_32"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_48 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_48 = GpuMetric_MachineSpec "N2D_HIGHCPU_48"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_64 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_64 = GpuMetric_MachineSpec "N2D_HIGHCPU_64"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_80 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_80 = GpuMetric_MachineSpec "N2D_HIGHCPU_80"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_96 = GpuMetric_MachineSpec "N2D_HIGHCPU_96"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_128 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_128 = GpuMetric_MachineSpec "N2D_HIGHCPU_128"

pattern GpuMetric_MachineSpec_N2D_HIGHCPU_224 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_N2D_HIGHCPU_224 = GpuMetric_MachineSpec "N2D_HIGHCPU_224"

pattern GpuMetric_MachineSpec_C2_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2_STANDARD_4 = GpuMetric_MachineSpec "C2_STANDARD_4"

pattern GpuMetric_MachineSpec_C2_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2_STANDARD_8 = GpuMetric_MachineSpec "C2_STANDARD_8"

pattern GpuMetric_MachineSpec_C2_STANDARD_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2_STANDARD_16 = GpuMetric_MachineSpec "C2_STANDARD_16"

pattern GpuMetric_MachineSpec_C2_STANDARD_30 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2_STANDARD_30 = GpuMetric_MachineSpec "C2_STANDARD_30"

pattern GpuMetric_MachineSpec_C2_STANDARD_60 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2_STANDARD_60 = GpuMetric_MachineSpec "C2_STANDARD_60"

pattern GpuMetric_MachineSpec_C2D_STANDARD_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_STANDARD_2 = GpuMetric_MachineSpec "C2D_STANDARD_2"

pattern GpuMetric_MachineSpec_C2D_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_STANDARD_4 = GpuMetric_MachineSpec "C2D_STANDARD_4"

pattern GpuMetric_MachineSpec_C2D_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_STANDARD_8 = GpuMetric_MachineSpec "C2D_STANDARD_8"

pattern GpuMetric_MachineSpec_C2D_STANDARD_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_STANDARD_16 = GpuMetric_MachineSpec "C2D_STANDARD_16"

pattern GpuMetric_MachineSpec_C2D_STANDARD_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_STANDARD_32 = GpuMetric_MachineSpec "C2D_STANDARD_32"

pattern GpuMetric_MachineSpec_C2D_STANDARD_56 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_STANDARD_56 = GpuMetric_MachineSpec "C2D_STANDARD_56"

pattern GpuMetric_MachineSpec_C2D_STANDARD_112 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_STANDARD_112 = GpuMetric_MachineSpec "C2D_STANDARD_112"

pattern GpuMetric_MachineSpec_C2D_HIGHCPU_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHCPU_2 = GpuMetric_MachineSpec "C2D_HIGHCPU_2"

pattern GpuMetric_MachineSpec_C2D_HIGHCPU_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHCPU_4 = GpuMetric_MachineSpec "C2D_HIGHCPU_4"

pattern GpuMetric_MachineSpec_C2D_HIGHCPU_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHCPU_8 = GpuMetric_MachineSpec "C2D_HIGHCPU_8"

pattern GpuMetric_MachineSpec_C2D_HIGHCPU_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHCPU_16 = GpuMetric_MachineSpec "C2D_HIGHCPU_16"

pattern GpuMetric_MachineSpec_C2D_HIGHCPU_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHCPU_32 = GpuMetric_MachineSpec "C2D_HIGHCPU_32"

pattern GpuMetric_MachineSpec_C2D_HIGHCPU_56 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHCPU_56 = GpuMetric_MachineSpec "C2D_HIGHCPU_56"

pattern GpuMetric_MachineSpec_C2D_HIGHCPU_112 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHCPU_112 = GpuMetric_MachineSpec "C2D_HIGHCPU_112"

pattern GpuMetric_MachineSpec_C2D_HIGHMEM_2 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHMEM_2 = GpuMetric_MachineSpec "C2D_HIGHMEM_2"

pattern GpuMetric_MachineSpec_C2D_HIGHMEM_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHMEM_4 = GpuMetric_MachineSpec "C2D_HIGHMEM_4"

pattern GpuMetric_MachineSpec_C2D_HIGHMEM_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHMEM_8 = GpuMetric_MachineSpec "C2D_HIGHMEM_8"

pattern GpuMetric_MachineSpec_C2D_HIGHMEM_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHMEM_16 = GpuMetric_MachineSpec "C2D_HIGHMEM_16"

pattern GpuMetric_MachineSpec_C2D_HIGHMEM_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHMEM_32 = GpuMetric_MachineSpec "C2D_HIGHMEM_32"

pattern GpuMetric_MachineSpec_C2D_HIGHMEM_56 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHMEM_56 = GpuMetric_MachineSpec "C2D_HIGHMEM_56"

pattern GpuMetric_MachineSpec_C2D_HIGHMEM_112 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C2D_HIGHMEM_112 = GpuMetric_MachineSpec "C2D_HIGHMEM_112"

pattern GpuMetric_MachineSpec_G2_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_4 = GpuMetric_MachineSpec "G2_STANDARD_4"

pattern GpuMetric_MachineSpec_G2_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_8 = GpuMetric_MachineSpec "G2_STANDARD_8"

pattern GpuMetric_MachineSpec_G2_STANDARD_12 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_12 = GpuMetric_MachineSpec "G2_STANDARD_12"

pattern GpuMetric_MachineSpec_G2_STANDARD_16 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_16 = GpuMetric_MachineSpec "G2_STANDARD_16"

pattern GpuMetric_MachineSpec_G2_STANDARD_24 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_24 = GpuMetric_MachineSpec "G2_STANDARD_24"

pattern GpuMetric_MachineSpec_G2_STANDARD_32 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_32 = GpuMetric_MachineSpec "G2_STANDARD_32"

pattern GpuMetric_MachineSpec_G2_STANDARD_48 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_48 = GpuMetric_MachineSpec "G2_STANDARD_48"

pattern GpuMetric_MachineSpec_G2_STANDARD_96 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_G2_STANDARD_96 = GpuMetric_MachineSpec "G2_STANDARD_96"

pattern GpuMetric_MachineSpec_C3_STANDARD_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_STANDARD_4 = GpuMetric_MachineSpec "C3_STANDARD_4"

pattern GpuMetric_MachineSpec_C3_STANDARD_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_STANDARD_8 = GpuMetric_MachineSpec "C3_STANDARD_8"

pattern GpuMetric_MachineSpec_C3_STANDARD_22 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_STANDARD_22 = GpuMetric_MachineSpec "C3_STANDARD_22"

pattern GpuMetric_MachineSpec_C3_STANDARD_44 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_STANDARD_44 = GpuMetric_MachineSpec "C3_STANDARD_44"

pattern GpuMetric_MachineSpec_C3_STANDARD_88 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_STANDARD_88 = GpuMetric_MachineSpec "C3_STANDARD_88"

pattern GpuMetric_MachineSpec_C3_STANDARD_176 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_STANDARD_176 = GpuMetric_MachineSpec "C3_STANDARD_176"

pattern GpuMetric_MachineSpec_C3_HIGHCPU_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHCPU_4 = GpuMetric_MachineSpec "C3_HIGHCPU_4"

pattern GpuMetric_MachineSpec_C3_HIGHCPU_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHCPU_8 = GpuMetric_MachineSpec "C3_HIGHCPU_8"

pattern GpuMetric_MachineSpec_C3_HIGHCPU_22 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHCPU_22 = GpuMetric_MachineSpec "C3_HIGHCPU_22"

pattern GpuMetric_MachineSpec_C3_HIGHCPU_44 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHCPU_44 = GpuMetric_MachineSpec "C3_HIGHCPU_44"

pattern GpuMetric_MachineSpec_C3_HIGHCPU_88 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHCPU_88 = GpuMetric_MachineSpec "C3_HIGHCPU_88"

pattern GpuMetric_MachineSpec_C3_HIGHCPU_176 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHCPU_176 = GpuMetric_MachineSpec "C3_HIGHCPU_176"

pattern GpuMetric_MachineSpec_C3_HIGHMEM_4 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHMEM_4 = GpuMetric_MachineSpec "C3_HIGHMEM_4"

pattern GpuMetric_MachineSpec_C3_HIGHMEM_8 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHMEM_8 = GpuMetric_MachineSpec "C3_HIGHMEM_8"

pattern GpuMetric_MachineSpec_C3_HIGHMEM_22 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHMEM_22 = GpuMetric_MachineSpec "C3_HIGHMEM_22"

pattern GpuMetric_MachineSpec_C3_HIGHMEM_44 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHMEM_44 = GpuMetric_MachineSpec "C3_HIGHMEM_44"

pattern GpuMetric_MachineSpec_C3_HIGHMEM_88 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHMEM_88 = GpuMetric_MachineSpec "C3_HIGHMEM_88"

pattern GpuMetric_MachineSpec_C3_HIGHMEM_176 :: GpuMetric_MachineSpec
pattern GpuMetric_MachineSpec_C3_HIGHMEM_176 = GpuMetric_MachineSpec "C3_HIGHMEM_176"

{-# COMPLETE
  GpuMetric_MachineSpec_UNKNOWNMACHINESPEC,
  GpuMetric_MachineSpec_N1_STANDARD_2,
  GpuMetric_MachineSpec_N1_STANDARD_4,
  GpuMetric_MachineSpec_N1_STANDARD_8,
  GpuMetric_MachineSpec_N1_STANDARD_16,
  GpuMetric_MachineSpec_N1_STANDARD_32,
  GpuMetric_MachineSpec_N1_STANDARD_64,
  GpuMetric_MachineSpec_N1_STANDARD_96,
  GpuMetric_MachineSpec_N1_HIGHMEM_2,
  GpuMetric_MachineSpec_N1_HIGHMEM_4,
  GpuMetric_MachineSpec_N1_HIGHMEM_8,
  GpuMetric_MachineSpec_N1_HIGHMEM_16,
  GpuMetric_MachineSpec_N1_HIGHMEM_32,
  GpuMetric_MachineSpec_N1_HIGHMEM_64,
  GpuMetric_MachineSpec_N1_HIGHMEM_96,
  GpuMetric_MachineSpec_N1_HIGHCPU_2,
  GpuMetric_MachineSpec_N1_HIGHCPU_4,
  GpuMetric_MachineSpec_N1_HIGHCPU_8,
  GpuMetric_MachineSpec_N1_HIGHCPU_16,
  GpuMetric_MachineSpec_N1_HIGHCPU_32,
  GpuMetric_MachineSpec_N1_HIGHCPU_64,
  GpuMetric_MachineSpec_N1_HIGHCPU_96,
  GpuMetric_MachineSpec_A2HIGHGPU1G,
  GpuMetric_MachineSpec_A2HIGHGPU2G,
  GpuMetric_MachineSpec_A2HIGHGPU4G,
  GpuMetric_MachineSpec_A2HIGHGPU8G,
  GpuMetric_MachineSpec_A2MEGAGPU16G,
  GpuMetric_MachineSpec_A2ULTRAGPU1G,
  GpuMetric_MachineSpec_A2ULTRAGPU2G,
  GpuMetric_MachineSpec_A2ULTRAGPU4G,
  GpuMetric_MachineSpec_A2ULTRAGPU8G,
  GpuMetric_MachineSpec_A3HIGHGPU1G,
  GpuMetric_MachineSpec_A3HIGHGPU2G,
  GpuMetric_MachineSpec_A3HIGHGPU4G,
  GpuMetric_MachineSpec_A3HIGHGPU8G,
  GpuMetric_MachineSpec_A3MEGAGPU8G,
  GpuMetric_MachineSpec_E2_STANDARD_2,
  GpuMetric_MachineSpec_E2_STANDARD_4,
  GpuMetric_MachineSpec_E2_STANDARD_8,
  GpuMetric_MachineSpec_E2_STANDARD_16,
  GpuMetric_MachineSpec_E2_STANDARD_32,
  GpuMetric_MachineSpec_E2_HIGHMEM_2,
  GpuMetric_MachineSpec_E2_HIGHMEM_4,
  GpuMetric_MachineSpec_E2_HIGHMEM_8,
  GpuMetric_MachineSpec_E2_HIGHMEM_16,
  GpuMetric_MachineSpec_E2_HIGHCPU_2,
  GpuMetric_MachineSpec_E2_HIGHCPU_4,
  GpuMetric_MachineSpec_E2_HIGHCPU_8,
  GpuMetric_MachineSpec_E2_HIGHCPU_16,
  GpuMetric_MachineSpec_E2_HIGHCPU_32,
  GpuMetric_MachineSpec_N2_STANDARD_2,
  GpuMetric_MachineSpec_N2_STANDARD_4,
  GpuMetric_MachineSpec_N2_STANDARD_8,
  GpuMetric_MachineSpec_N2_STANDARD_16,
  GpuMetric_MachineSpec_N2_STANDARD_32,
  GpuMetric_MachineSpec_N2_STANDARD_48,
  GpuMetric_MachineSpec_N2_STANDARD_64,
  GpuMetric_MachineSpec_N2_STANDARD_80,
  GpuMetric_MachineSpec_N2_STANDARD_96,
  GpuMetric_MachineSpec_N2_STANDARD_128,
  GpuMetric_MachineSpec_N2_HIGHMEM_2,
  GpuMetric_MachineSpec_N2_HIGHMEM_4,
  GpuMetric_MachineSpec_N2_HIGHMEM_8,
  GpuMetric_MachineSpec_N2_HIGHMEM_16,
  GpuMetric_MachineSpec_N2_HIGHMEM_32,
  GpuMetric_MachineSpec_N2_HIGHMEM_48,
  GpuMetric_MachineSpec_N2_HIGHMEM_64,
  GpuMetric_MachineSpec_N2_HIGHMEM_80,
  GpuMetric_MachineSpec_N2_HIGHMEM_96,
  GpuMetric_MachineSpec_N2_HIGHMEM_128,
  GpuMetric_MachineSpec_N2_HIGHCPU_2,
  GpuMetric_MachineSpec_N2_HIGHCPU_4,
  GpuMetric_MachineSpec_N2_HIGHCPU_8,
  GpuMetric_MachineSpec_N2_HIGHCPU_16,
  GpuMetric_MachineSpec_N2_HIGHCPU_32,
  GpuMetric_MachineSpec_N2_HIGHCPU_48,
  GpuMetric_MachineSpec_N2_HIGHCPU_64,
  GpuMetric_MachineSpec_N2_HIGHCPU_80,
  GpuMetric_MachineSpec_N2_HIGHCPU_96,
  GpuMetric_MachineSpec_N2D_STANDARD_2,
  GpuMetric_MachineSpec_N2D_STANDARD_4,
  GpuMetric_MachineSpec_N2D_STANDARD_8,
  GpuMetric_MachineSpec_N2D_STANDARD_16,
  GpuMetric_MachineSpec_N2D_STANDARD_32,
  GpuMetric_MachineSpec_N2D_STANDARD_48,
  GpuMetric_MachineSpec_N2D_STANDARD_64,
  GpuMetric_MachineSpec_N2D_STANDARD_80,
  GpuMetric_MachineSpec_N2D_STANDARD_96,
  GpuMetric_MachineSpec_N2D_STANDARD_128,
  GpuMetric_MachineSpec_N2D_STANDARD_224,
  GpuMetric_MachineSpec_N2D_HIGHMEM_2,
  GpuMetric_MachineSpec_N2D_HIGHMEM_4,
  GpuMetric_MachineSpec_N2D_HIGHMEM_8,
  GpuMetric_MachineSpec_N2D_HIGHMEM_16,
  GpuMetric_MachineSpec_N2D_HIGHMEM_32,
  GpuMetric_MachineSpec_N2D_HIGHMEM_48,
  GpuMetric_MachineSpec_N2D_HIGHMEM_64,
  GpuMetric_MachineSpec_N2D_HIGHMEM_80,
  GpuMetric_MachineSpec_N2D_HIGHMEM_96,
  GpuMetric_MachineSpec_N2D_HIGHCPU_2,
  GpuMetric_MachineSpec_N2D_HIGHCPU_4,
  GpuMetric_MachineSpec_N2D_HIGHCPU_8,
  GpuMetric_MachineSpec_N2D_HIGHCPU_16,
  GpuMetric_MachineSpec_N2D_HIGHCPU_32,
  GpuMetric_MachineSpec_N2D_HIGHCPU_48,
  GpuMetric_MachineSpec_N2D_HIGHCPU_64,
  GpuMetric_MachineSpec_N2D_HIGHCPU_80,
  GpuMetric_MachineSpec_N2D_HIGHCPU_96,
  GpuMetric_MachineSpec_N2D_HIGHCPU_128,
  GpuMetric_MachineSpec_N2D_HIGHCPU_224,
  GpuMetric_MachineSpec_C2_STANDARD_4,
  GpuMetric_MachineSpec_C2_STANDARD_8,
  GpuMetric_MachineSpec_C2_STANDARD_16,
  GpuMetric_MachineSpec_C2_STANDARD_30,
  GpuMetric_MachineSpec_C2_STANDARD_60,
  GpuMetric_MachineSpec_C2D_STANDARD_2,
  GpuMetric_MachineSpec_C2D_STANDARD_4,
  GpuMetric_MachineSpec_C2D_STANDARD_8,
  GpuMetric_MachineSpec_C2D_STANDARD_16,
  GpuMetric_MachineSpec_C2D_STANDARD_32,
  GpuMetric_MachineSpec_C2D_STANDARD_56,
  GpuMetric_MachineSpec_C2D_STANDARD_112,
  GpuMetric_MachineSpec_C2D_HIGHCPU_2,
  GpuMetric_MachineSpec_C2D_HIGHCPU_4,
  GpuMetric_MachineSpec_C2D_HIGHCPU_8,
  GpuMetric_MachineSpec_C2D_HIGHCPU_16,
  GpuMetric_MachineSpec_C2D_HIGHCPU_32,
  GpuMetric_MachineSpec_C2D_HIGHCPU_56,
  GpuMetric_MachineSpec_C2D_HIGHCPU_112,
  GpuMetric_MachineSpec_C2D_HIGHMEM_2,
  GpuMetric_MachineSpec_C2D_HIGHMEM_4,
  GpuMetric_MachineSpec_C2D_HIGHMEM_8,
  GpuMetric_MachineSpec_C2D_HIGHMEM_16,
  GpuMetric_MachineSpec_C2D_HIGHMEM_32,
  GpuMetric_MachineSpec_C2D_HIGHMEM_56,
  GpuMetric_MachineSpec_C2D_HIGHMEM_112,
  GpuMetric_MachineSpec_G2_STANDARD_4,
  GpuMetric_MachineSpec_G2_STANDARD_8,
  GpuMetric_MachineSpec_G2_STANDARD_12,
  GpuMetric_MachineSpec_G2_STANDARD_16,
  GpuMetric_MachineSpec_G2_STANDARD_24,
  GpuMetric_MachineSpec_G2_STANDARD_32,
  GpuMetric_MachineSpec_G2_STANDARD_48,
  GpuMetric_MachineSpec_G2_STANDARD_96,
  GpuMetric_MachineSpec_C3_STANDARD_4,
  GpuMetric_MachineSpec_C3_STANDARD_8,
  GpuMetric_MachineSpec_C3_STANDARD_22,
  GpuMetric_MachineSpec_C3_STANDARD_44,
  GpuMetric_MachineSpec_C3_STANDARD_88,
  GpuMetric_MachineSpec_C3_STANDARD_176,
  GpuMetric_MachineSpec_C3_HIGHCPU_4,
  GpuMetric_MachineSpec_C3_HIGHCPU_8,
  GpuMetric_MachineSpec_C3_HIGHCPU_22,
  GpuMetric_MachineSpec_C3_HIGHCPU_44,
  GpuMetric_MachineSpec_C3_HIGHCPU_88,
  GpuMetric_MachineSpec_C3_HIGHCPU_176,
  GpuMetric_MachineSpec_C3_HIGHMEM_4,
  GpuMetric_MachineSpec_C3_HIGHMEM_8,
  GpuMetric_MachineSpec_C3_HIGHMEM_22,
  GpuMetric_MachineSpec_C3_HIGHMEM_44,
  GpuMetric_MachineSpec_C3_HIGHMEM_88,
  GpuMetric_MachineSpec_C3_HIGHMEM_176,
  GpuMetric_MachineSpec
  #-}

-- | Optional. The model version to use for ModerateText.
newtype ModerateTextRequest_ModelVersion = ModerateTextRequest_ModelVersion {fromModerateTextRequest_ModelVersion :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default model version.
pattern ModerateTextRequest_ModelVersion_MODELVERSIONUNSPECIFIED :: ModerateTextRequest_ModelVersion
pattern ModerateTextRequest_ModelVersion_MODELVERSIONUNSPECIFIED = ModerateTextRequest_ModelVersion "MODEL_VERSION_UNSPECIFIED"

-- | Use the v1 model, this model is used by default when not provided. The v1 model only returns probability (confidence) score for each category.
pattern ModerateTextRequest_ModelVersion_MODEL_VERSION_1 :: ModerateTextRequest_ModelVersion
pattern ModerateTextRequest_ModelVersion_MODEL_VERSION_1 = ModerateTextRequest_ModelVersion "MODEL_VERSION_1"

-- | Use the v2 model. The v2 model only returns probability (confidence) score for each category, and returns severity score for a subset of the categories.
pattern ModerateTextRequest_ModelVersion_MODEL_VERSION_2 :: ModerateTextRequest_ModelVersion
pattern ModerateTextRequest_ModelVersion_MODEL_VERSION_2 = ModerateTextRequest_ModelVersion "MODEL_VERSION_2"

{-# COMPLETE
  ModerateTextRequest_ModelVersion_MODELVERSIONUNSPECIFIED,
  ModerateTextRequest_ModelVersion_MODEL_VERSION_1,
  ModerateTextRequest_ModelVersion_MODEL_VERSION_2,
  ModerateTextRequest_ModelVersion
  #-}

-- | Required. Machine spec, e.g. N1/STANDARD/4.
newtype RamMetric_MachineSpec = RamMetric_MachineSpec {fromRamMetric_MachineSpec :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern RamMetric_MachineSpec_UNKNOWNMACHINESPEC :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_UNKNOWNMACHINESPEC = RamMetric_MachineSpec "UNKNOWN_MACHINE_SPEC"

pattern RamMetric_MachineSpec_N1_STANDARD_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_STANDARD_2 = RamMetric_MachineSpec "N1_STANDARD_2"

pattern RamMetric_MachineSpec_N1_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_STANDARD_4 = RamMetric_MachineSpec "N1_STANDARD_4"

pattern RamMetric_MachineSpec_N1_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_STANDARD_8 = RamMetric_MachineSpec "N1_STANDARD_8"

pattern RamMetric_MachineSpec_N1_STANDARD_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_STANDARD_16 = RamMetric_MachineSpec "N1_STANDARD_16"

pattern RamMetric_MachineSpec_N1_STANDARD_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_STANDARD_32 = RamMetric_MachineSpec "N1_STANDARD_32"

pattern RamMetric_MachineSpec_N1_STANDARD_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_STANDARD_64 = RamMetric_MachineSpec "N1_STANDARD_64"

pattern RamMetric_MachineSpec_N1_STANDARD_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_STANDARD_96 = RamMetric_MachineSpec "N1_STANDARD_96"

pattern RamMetric_MachineSpec_N1_HIGHMEM_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHMEM_2 = RamMetric_MachineSpec "N1_HIGHMEM_2"

pattern RamMetric_MachineSpec_N1_HIGHMEM_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHMEM_4 = RamMetric_MachineSpec "N1_HIGHMEM_4"

pattern RamMetric_MachineSpec_N1_HIGHMEM_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHMEM_8 = RamMetric_MachineSpec "N1_HIGHMEM_8"

pattern RamMetric_MachineSpec_N1_HIGHMEM_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHMEM_16 = RamMetric_MachineSpec "N1_HIGHMEM_16"

pattern RamMetric_MachineSpec_N1_HIGHMEM_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHMEM_32 = RamMetric_MachineSpec "N1_HIGHMEM_32"

pattern RamMetric_MachineSpec_N1_HIGHMEM_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHMEM_64 = RamMetric_MachineSpec "N1_HIGHMEM_64"

pattern RamMetric_MachineSpec_N1_HIGHMEM_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHMEM_96 = RamMetric_MachineSpec "N1_HIGHMEM_96"

pattern RamMetric_MachineSpec_N1_HIGHCPU_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHCPU_2 = RamMetric_MachineSpec "N1_HIGHCPU_2"

pattern RamMetric_MachineSpec_N1_HIGHCPU_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHCPU_4 = RamMetric_MachineSpec "N1_HIGHCPU_4"

pattern RamMetric_MachineSpec_N1_HIGHCPU_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHCPU_8 = RamMetric_MachineSpec "N1_HIGHCPU_8"

pattern RamMetric_MachineSpec_N1_HIGHCPU_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHCPU_16 = RamMetric_MachineSpec "N1_HIGHCPU_16"

pattern RamMetric_MachineSpec_N1_HIGHCPU_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHCPU_32 = RamMetric_MachineSpec "N1_HIGHCPU_32"

pattern RamMetric_MachineSpec_N1_HIGHCPU_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHCPU_64 = RamMetric_MachineSpec "N1_HIGHCPU_64"

pattern RamMetric_MachineSpec_N1_HIGHCPU_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N1_HIGHCPU_96 = RamMetric_MachineSpec "N1_HIGHCPU_96"

pattern RamMetric_MachineSpec_A2HIGHGPU1G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2HIGHGPU1G = RamMetric_MachineSpec "A2_HIGHGPU_1G"

pattern RamMetric_MachineSpec_A2HIGHGPU2G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2HIGHGPU2G = RamMetric_MachineSpec "A2_HIGHGPU_2G"

pattern RamMetric_MachineSpec_A2HIGHGPU4G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2HIGHGPU4G = RamMetric_MachineSpec "A2_HIGHGPU_4G"

pattern RamMetric_MachineSpec_A2HIGHGPU8G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2HIGHGPU8G = RamMetric_MachineSpec "A2_HIGHGPU_8G"

pattern RamMetric_MachineSpec_A2MEGAGPU16G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2MEGAGPU16G = RamMetric_MachineSpec "A2_MEGAGPU_16G"

pattern RamMetric_MachineSpec_A2ULTRAGPU1G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2ULTRAGPU1G = RamMetric_MachineSpec "A2_ULTRAGPU_1G"

pattern RamMetric_MachineSpec_A2ULTRAGPU2G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2ULTRAGPU2G = RamMetric_MachineSpec "A2_ULTRAGPU_2G"

pattern RamMetric_MachineSpec_A2ULTRAGPU4G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2ULTRAGPU4G = RamMetric_MachineSpec "A2_ULTRAGPU_4G"

pattern RamMetric_MachineSpec_A2ULTRAGPU8G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A2ULTRAGPU8G = RamMetric_MachineSpec "A2_ULTRAGPU_8G"

pattern RamMetric_MachineSpec_A3HIGHGPU1G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A3HIGHGPU1G = RamMetric_MachineSpec "A3_HIGHGPU_1G"

pattern RamMetric_MachineSpec_A3HIGHGPU2G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A3HIGHGPU2G = RamMetric_MachineSpec "A3_HIGHGPU_2G"

pattern RamMetric_MachineSpec_A3HIGHGPU4G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A3HIGHGPU4G = RamMetric_MachineSpec "A3_HIGHGPU_4G"

pattern RamMetric_MachineSpec_A3HIGHGPU8G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A3HIGHGPU8G = RamMetric_MachineSpec "A3_HIGHGPU_8G"

pattern RamMetric_MachineSpec_A3MEGAGPU8G :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_A3MEGAGPU8G = RamMetric_MachineSpec "A3_MEGAGPU_8G"

pattern RamMetric_MachineSpec_E2_STANDARD_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_STANDARD_2 = RamMetric_MachineSpec "E2_STANDARD_2"

pattern RamMetric_MachineSpec_E2_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_STANDARD_4 = RamMetric_MachineSpec "E2_STANDARD_4"

pattern RamMetric_MachineSpec_E2_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_STANDARD_8 = RamMetric_MachineSpec "E2_STANDARD_8"

pattern RamMetric_MachineSpec_E2_STANDARD_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_STANDARD_16 = RamMetric_MachineSpec "E2_STANDARD_16"

pattern RamMetric_MachineSpec_E2_STANDARD_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_STANDARD_32 = RamMetric_MachineSpec "E2_STANDARD_32"

pattern RamMetric_MachineSpec_E2_HIGHMEM_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHMEM_2 = RamMetric_MachineSpec "E2_HIGHMEM_2"

pattern RamMetric_MachineSpec_E2_HIGHMEM_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHMEM_4 = RamMetric_MachineSpec "E2_HIGHMEM_4"

pattern RamMetric_MachineSpec_E2_HIGHMEM_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHMEM_8 = RamMetric_MachineSpec "E2_HIGHMEM_8"

pattern RamMetric_MachineSpec_E2_HIGHMEM_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHMEM_16 = RamMetric_MachineSpec "E2_HIGHMEM_16"

pattern RamMetric_MachineSpec_E2_HIGHCPU_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHCPU_2 = RamMetric_MachineSpec "E2_HIGHCPU_2"

pattern RamMetric_MachineSpec_E2_HIGHCPU_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHCPU_4 = RamMetric_MachineSpec "E2_HIGHCPU_4"

pattern RamMetric_MachineSpec_E2_HIGHCPU_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHCPU_8 = RamMetric_MachineSpec "E2_HIGHCPU_8"

pattern RamMetric_MachineSpec_E2_HIGHCPU_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHCPU_16 = RamMetric_MachineSpec "E2_HIGHCPU_16"

pattern RamMetric_MachineSpec_E2_HIGHCPU_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_E2_HIGHCPU_32 = RamMetric_MachineSpec "E2_HIGHCPU_32"

pattern RamMetric_MachineSpec_N2_STANDARD_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_2 = RamMetric_MachineSpec "N2_STANDARD_2"

pattern RamMetric_MachineSpec_N2_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_4 = RamMetric_MachineSpec "N2_STANDARD_4"

pattern RamMetric_MachineSpec_N2_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_8 = RamMetric_MachineSpec "N2_STANDARD_8"

pattern RamMetric_MachineSpec_N2_STANDARD_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_16 = RamMetric_MachineSpec "N2_STANDARD_16"

pattern RamMetric_MachineSpec_N2_STANDARD_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_32 = RamMetric_MachineSpec "N2_STANDARD_32"

pattern RamMetric_MachineSpec_N2_STANDARD_48 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_48 = RamMetric_MachineSpec "N2_STANDARD_48"

pattern RamMetric_MachineSpec_N2_STANDARD_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_64 = RamMetric_MachineSpec "N2_STANDARD_64"

pattern RamMetric_MachineSpec_N2_STANDARD_80 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_80 = RamMetric_MachineSpec "N2_STANDARD_80"

pattern RamMetric_MachineSpec_N2_STANDARD_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_96 = RamMetric_MachineSpec "N2_STANDARD_96"

pattern RamMetric_MachineSpec_N2_STANDARD_128 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_STANDARD_128 = RamMetric_MachineSpec "N2_STANDARD_128"

pattern RamMetric_MachineSpec_N2_HIGHMEM_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_2 = RamMetric_MachineSpec "N2_HIGHMEM_2"

pattern RamMetric_MachineSpec_N2_HIGHMEM_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_4 = RamMetric_MachineSpec "N2_HIGHMEM_4"

pattern RamMetric_MachineSpec_N2_HIGHMEM_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_8 = RamMetric_MachineSpec "N2_HIGHMEM_8"

pattern RamMetric_MachineSpec_N2_HIGHMEM_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_16 = RamMetric_MachineSpec "N2_HIGHMEM_16"

pattern RamMetric_MachineSpec_N2_HIGHMEM_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_32 = RamMetric_MachineSpec "N2_HIGHMEM_32"

pattern RamMetric_MachineSpec_N2_HIGHMEM_48 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_48 = RamMetric_MachineSpec "N2_HIGHMEM_48"

pattern RamMetric_MachineSpec_N2_HIGHMEM_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_64 = RamMetric_MachineSpec "N2_HIGHMEM_64"

pattern RamMetric_MachineSpec_N2_HIGHMEM_80 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_80 = RamMetric_MachineSpec "N2_HIGHMEM_80"

pattern RamMetric_MachineSpec_N2_HIGHMEM_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_96 = RamMetric_MachineSpec "N2_HIGHMEM_96"

pattern RamMetric_MachineSpec_N2_HIGHMEM_128 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHMEM_128 = RamMetric_MachineSpec "N2_HIGHMEM_128"

pattern RamMetric_MachineSpec_N2_HIGHCPU_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_2 = RamMetric_MachineSpec "N2_HIGHCPU_2"

pattern RamMetric_MachineSpec_N2_HIGHCPU_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_4 = RamMetric_MachineSpec "N2_HIGHCPU_4"

pattern RamMetric_MachineSpec_N2_HIGHCPU_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_8 = RamMetric_MachineSpec "N2_HIGHCPU_8"

pattern RamMetric_MachineSpec_N2_HIGHCPU_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_16 = RamMetric_MachineSpec "N2_HIGHCPU_16"

pattern RamMetric_MachineSpec_N2_HIGHCPU_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_32 = RamMetric_MachineSpec "N2_HIGHCPU_32"

pattern RamMetric_MachineSpec_N2_HIGHCPU_48 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_48 = RamMetric_MachineSpec "N2_HIGHCPU_48"

pattern RamMetric_MachineSpec_N2_HIGHCPU_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_64 = RamMetric_MachineSpec "N2_HIGHCPU_64"

pattern RamMetric_MachineSpec_N2_HIGHCPU_80 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_80 = RamMetric_MachineSpec "N2_HIGHCPU_80"

pattern RamMetric_MachineSpec_N2_HIGHCPU_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2_HIGHCPU_96 = RamMetric_MachineSpec "N2_HIGHCPU_96"

pattern RamMetric_MachineSpec_N2D_STANDARD_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_2 = RamMetric_MachineSpec "N2D_STANDARD_2"

pattern RamMetric_MachineSpec_N2D_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_4 = RamMetric_MachineSpec "N2D_STANDARD_4"

pattern RamMetric_MachineSpec_N2D_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_8 = RamMetric_MachineSpec "N2D_STANDARD_8"

pattern RamMetric_MachineSpec_N2D_STANDARD_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_16 = RamMetric_MachineSpec "N2D_STANDARD_16"

pattern RamMetric_MachineSpec_N2D_STANDARD_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_32 = RamMetric_MachineSpec "N2D_STANDARD_32"

pattern RamMetric_MachineSpec_N2D_STANDARD_48 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_48 = RamMetric_MachineSpec "N2D_STANDARD_48"

pattern RamMetric_MachineSpec_N2D_STANDARD_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_64 = RamMetric_MachineSpec "N2D_STANDARD_64"

pattern RamMetric_MachineSpec_N2D_STANDARD_80 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_80 = RamMetric_MachineSpec "N2D_STANDARD_80"

pattern RamMetric_MachineSpec_N2D_STANDARD_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_96 = RamMetric_MachineSpec "N2D_STANDARD_96"

pattern RamMetric_MachineSpec_N2D_STANDARD_128 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_128 = RamMetric_MachineSpec "N2D_STANDARD_128"

pattern RamMetric_MachineSpec_N2D_STANDARD_224 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_STANDARD_224 = RamMetric_MachineSpec "N2D_STANDARD_224"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_2 = RamMetric_MachineSpec "N2D_HIGHMEM_2"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_4 = RamMetric_MachineSpec "N2D_HIGHMEM_4"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_8 = RamMetric_MachineSpec "N2D_HIGHMEM_8"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_16 = RamMetric_MachineSpec "N2D_HIGHMEM_16"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_32 = RamMetric_MachineSpec "N2D_HIGHMEM_32"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_48 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_48 = RamMetric_MachineSpec "N2D_HIGHMEM_48"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_64 = RamMetric_MachineSpec "N2D_HIGHMEM_64"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_80 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_80 = RamMetric_MachineSpec "N2D_HIGHMEM_80"

pattern RamMetric_MachineSpec_N2D_HIGHMEM_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHMEM_96 = RamMetric_MachineSpec "N2D_HIGHMEM_96"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_2 = RamMetric_MachineSpec "N2D_HIGHCPU_2"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_4 = RamMetric_MachineSpec "N2D_HIGHCPU_4"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_8 = RamMetric_MachineSpec "N2D_HIGHCPU_8"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_16 = RamMetric_MachineSpec "N2D_HIGHCPU_16"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_32 = RamMetric_MachineSpec "N2D_HIGHCPU_32"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_48 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_48 = RamMetric_MachineSpec "N2D_HIGHCPU_48"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_64 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_64 = RamMetric_MachineSpec "N2D_HIGHCPU_64"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_80 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_80 = RamMetric_MachineSpec "N2D_HIGHCPU_80"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_96 = RamMetric_MachineSpec "N2D_HIGHCPU_96"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_128 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_128 = RamMetric_MachineSpec "N2D_HIGHCPU_128"

pattern RamMetric_MachineSpec_N2D_HIGHCPU_224 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_N2D_HIGHCPU_224 = RamMetric_MachineSpec "N2D_HIGHCPU_224"

pattern RamMetric_MachineSpec_C2_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2_STANDARD_4 = RamMetric_MachineSpec "C2_STANDARD_4"

pattern RamMetric_MachineSpec_C2_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2_STANDARD_8 = RamMetric_MachineSpec "C2_STANDARD_8"

pattern RamMetric_MachineSpec_C2_STANDARD_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2_STANDARD_16 = RamMetric_MachineSpec "C2_STANDARD_16"

pattern RamMetric_MachineSpec_C2_STANDARD_30 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2_STANDARD_30 = RamMetric_MachineSpec "C2_STANDARD_30"

pattern RamMetric_MachineSpec_C2_STANDARD_60 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2_STANDARD_60 = RamMetric_MachineSpec "C2_STANDARD_60"

pattern RamMetric_MachineSpec_C2D_STANDARD_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_STANDARD_2 = RamMetric_MachineSpec "C2D_STANDARD_2"

pattern RamMetric_MachineSpec_C2D_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_STANDARD_4 = RamMetric_MachineSpec "C2D_STANDARD_4"

pattern RamMetric_MachineSpec_C2D_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_STANDARD_8 = RamMetric_MachineSpec "C2D_STANDARD_8"

pattern RamMetric_MachineSpec_C2D_STANDARD_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_STANDARD_16 = RamMetric_MachineSpec "C2D_STANDARD_16"

pattern RamMetric_MachineSpec_C2D_STANDARD_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_STANDARD_32 = RamMetric_MachineSpec "C2D_STANDARD_32"

pattern RamMetric_MachineSpec_C2D_STANDARD_56 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_STANDARD_56 = RamMetric_MachineSpec "C2D_STANDARD_56"

pattern RamMetric_MachineSpec_C2D_STANDARD_112 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_STANDARD_112 = RamMetric_MachineSpec "C2D_STANDARD_112"

pattern RamMetric_MachineSpec_C2D_HIGHCPU_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHCPU_2 = RamMetric_MachineSpec "C2D_HIGHCPU_2"

pattern RamMetric_MachineSpec_C2D_HIGHCPU_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHCPU_4 = RamMetric_MachineSpec "C2D_HIGHCPU_4"

pattern RamMetric_MachineSpec_C2D_HIGHCPU_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHCPU_8 = RamMetric_MachineSpec "C2D_HIGHCPU_8"

pattern RamMetric_MachineSpec_C2D_HIGHCPU_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHCPU_16 = RamMetric_MachineSpec "C2D_HIGHCPU_16"

pattern RamMetric_MachineSpec_C2D_HIGHCPU_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHCPU_32 = RamMetric_MachineSpec "C2D_HIGHCPU_32"

pattern RamMetric_MachineSpec_C2D_HIGHCPU_56 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHCPU_56 = RamMetric_MachineSpec "C2D_HIGHCPU_56"

pattern RamMetric_MachineSpec_C2D_HIGHCPU_112 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHCPU_112 = RamMetric_MachineSpec "C2D_HIGHCPU_112"

pattern RamMetric_MachineSpec_C2D_HIGHMEM_2 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHMEM_2 = RamMetric_MachineSpec "C2D_HIGHMEM_2"

pattern RamMetric_MachineSpec_C2D_HIGHMEM_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHMEM_4 = RamMetric_MachineSpec "C2D_HIGHMEM_4"

pattern RamMetric_MachineSpec_C2D_HIGHMEM_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHMEM_8 = RamMetric_MachineSpec "C2D_HIGHMEM_8"

pattern RamMetric_MachineSpec_C2D_HIGHMEM_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHMEM_16 = RamMetric_MachineSpec "C2D_HIGHMEM_16"

pattern RamMetric_MachineSpec_C2D_HIGHMEM_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHMEM_32 = RamMetric_MachineSpec "C2D_HIGHMEM_32"

pattern RamMetric_MachineSpec_C2D_HIGHMEM_56 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHMEM_56 = RamMetric_MachineSpec "C2D_HIGHMEM_56"

pattern RamMetric_MachineSpec_C2D_HIGHMEM_112 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C2D_HIGHMEM_112 = RamMetric_MachineSpec "C2D_HIGHMEM_112"

pattern RamMetric_MachineSpec_G2_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_4 = RamMetric_MachineSpec "G2_STANDARD_4"

pattern RamMetric_MachineSpec_G2_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_8 = RamMetric_MachineSpec "G2_STANDARD_8"

pattern RamMetric_MachineSpec_G2_STANDARD_12 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_12 = RamMetric_MachineSpec "G2_STANDARD_12"

pattern RamMetric_MachineSpec_G2_STANDARD_16 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_16 = RamMetric_MachineSpec "G2_STANDARD_16"

pattern RamMetric_MachineSpec_G2_STANDARD_24 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_24 = RamMetric_MachineSpec "G2_STANDARD_24"

pattern RamMetric_MachineSpec_G2_STANDARD_32 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_32 = RamMetric_MachineSpec "G2_STANDARD_32"

pattern RamMetric_MachineSpec_G2_STANDARD_48 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_48 = RamMetric_MachineSpec "G2_STANDARD_48"

pattern RamMetric_MachineSpec_G2_STANDARD_96 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_G2_STANDARD_96 = RamMetric_MachineSpec "G2_STANDARD_96"

pattern RamMetric_MachineSpec_C3_STANDARD_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_STANDARD_4 = RamMetric_MachineSpec "C3_STANDARD_4"

pattern RamMetric_MachineSpec_C3_STANDARD_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_STANDARD_8 = RamMetric_MachineSpec "C3_STANDARD_8"

pattern RamMetric_MachineSpec_C3_STANDARD_22 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_STANDARD_22 = RamMetric_MachineSpec "C3_STANDARD_22"

pattern RamMetric_MachineSpec_C3_STANDARD_44 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_STANDARD_44 = RamMetric_MachineSpec "C3_STANDARD_44"

pattern RamMetric_MachineSpec_C3_STANDARD_88 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_STANDARD_88 = RamMetric_MachineSpec "C3_STANDARD_88"

pattern RamMetric_MachineSpec_C3_STANDARD_176 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_STANDARD_176 = RamMetric_MachineSpec "C3_STANDARD_176"

pattern RamMetric_MachineSpec_C3_HIGHCPU_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHCPU_4 = RamMetric_MachineSpec "C3_HIGHCPU_4"

pattern RamMetric_MachineSpec_C3_HIGHCPU_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHCPU_8 = RamMetric_MachineSpec "C3_HIGHCPU_8"

pattern RamMetric_MachineSpec_C3_HIGHCPU_22 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHCPU_22 = RamMetric_MachineSpec "C3_HIGHCPU_22"

pattern RamMetric_MachineSpec_C3_HIGHCPU_44 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHCPU_44 = RamMetric_MachineSpec "C3_HIGHCPU_44"

pattern RamMetric_MachineSpec_C3_HIGHCPU_88 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHCPU_88 = RamMetric_MachineSpec "C3_HIGHCPU_88"

pattern RamMetric_MachineSpec_C3_HIGHCPU_176 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHCPU_176 = RamMetric_MachineSpec "C3_HIGHCPU_176"

pattern RamMetric_MachineSpec_C3_HIGHMEM_4 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHMEM_4 = RamMetric_MachineSpec "C3_HIGHMEM_4"

pattern RamMetric_MachineSpec_C3_HIGHMEM_8 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHMEM_8 = RamMetric_MachineSpec "C3_HIGHMEM_8"

pattern RamMetric_MachineSpec_C3_HIGHMEM_22 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHMEM_22 = RamMetric_MachineSpec "C3_HIGHMEM_22"

pattern RamMetric_MachineSpec_C3_HIGHMEM_44 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHMEM_44 = RamMetric_MachineSpec "C3_HIGHMEM_44"

pattern RamMetric_MachineSpec_C3_HIGHMEM_88 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHMEM_88 = RamMetric_MachineSpec "C3_HIGHMEM_88"

pattern RamMetric_MachineSpec_C3_HIGHMEM_176 :: RamMetric_MachineSpec
pattern RamMetric_MachineSpec_C3_HIGHMEM_176 = RamMetric_MachineSpec "C3_HIGHMEM_176"

{-# COMPLETE
  RamMetric_MachineSpec_UNKNOWNMACHINESPEC,
  RamMetric_MachineSpec_N1_STANDARD_2,
  RamMetric_MachineSpec_N1_STANDARD_4,
  RamMetric_MachineSpec_N1_STANDARD_8,
  RamMetric_MachineSpec_N1_STANDARD_16,
  RamMetric_MachineSpec_N1_STANDARD_32,
  RamMetric_MachineSpec_N1_STANDARD_64,
  RamMetric_MachineSpec_N1_STANDARD_96,
  RamMetric_MachineSpec_N1_HIGHMEM_2,
  RamMetric_MachineSpec_N1_HIGHMEM_4,
  RamMetric_MachineSpec_N1_HIGHMEM_8,
  RamMetric_MachineSpec_N1_HIGHMEM_16,
  RamMetric_MachineSpec_N1_HIGHMEM_32,
  RamMetric_MachineSpec_N1_HIGHMEM_64,
  RamMetric_MachineSpec_N1_HIGHMEM_96,
  RamMetric_MachineSpec_N1_HIGHCPU_2,
  RamMetric_MachineSpec_N1_HIGHCPU_4,
  RamMetric_MachineSpec_N1_HIGHCPU_8,
  RamMetric_MachineSpec_N1_HIGHCPU_16,
  RamMetric_MachineSpec_N1_HIGHCPU_32,
  RamMetric_MachineSpec_N1_HIGHCPU_64,
  RamMetric_MachineSpec_N1_HIGHCPU_96,
  RamMetric_MachineSpec_A2HIGHGPU1G,
  RamMetric_MachineSpec_A2HIGHGPU2G,
  RamMetric_MachineSpec_A2HIGHGPU4G,
  RamMetric_MachineSpec_A2HIGHGPU8G,
  RamMetric_MachineSpec_A2MEGAGPU16G,
  RamMetric_MachineSpec_A2ULTRAGPU1G,
  RamMetric_MachineSpec_A2ULTRAGPU2G,
  RamMetric_MachineSpec_A2ULTRAGPU4G,
  RamMetric_MachineSpec_A2ULTRAGPU8G,
  RamMetric_MachineSpec_A3HIGHGPU1G,
  RamMetric_MachineSpec_A3HIGHGPU2G,
  RamMetric_MachineSpec_A3HIGHGPU4G,
  RamMetric_MachineSpec_A3HIGHGPU8G,
  RamMetric_MachineSpec_A3MEGAGPU8G,
  RamMetric_MachineSpec_E2_STANDARD_2,
  RamMetric_MachineSpec_E2_STANDARD_4,
  RamMetric_MachineSpec_E2_STANDARD_8,
  RamMetric_MachineSpec_E2_STANDARD_16,
  RamMetric_MachineSpec_E2_STANDARD_32,
  RamMetric_MachineSpec_E2_HIGHMEM_2,
  RamMetric_MachineSpec_E2_HIGHMEM_4,
  RamMetric_MachineSpec_E2_HIGHMEM_8,
  RamMetric_MachineSpec_E2_HIGHMEM_16,
  RamMetric_MachineSpec_E2_HIGHCPU_2,
  RamMetric_MachineSpec_E2_HIGHCPU_4,
  RamMetric_MachineSpec_E2_HIGHCPU_8,
  RamMetric_MachineSpec_E2_HIGHCPU_16,
  RamMetric_MachineSpec_E2_HIGHCPU_32,
  RamMetric_MachineSpec_N2_STANDARD_2,
  RamMetric_MachineSpec_N2_STANDARD_4,
  RamMetric_MachineSpec_N2_STANDARD_8,
  RamMetric_MachineSpec_N2_STANDARD_16,
  RamMetric_MachineSpec_N2_STANDARD_32,
  RamMetric_MachineSpec_N2_STANDARD_48,
  RamMetric_MachineSpec_N2_STANDARD_64,
  RamMetric_MachineSpec_N2_STANDARD_80,
  RamMetric_MachineSpec_N2_STANDARD_96,
  RamMetric_MachineSpec_N2_STANDARD_128,
  RamMetric_MachineSpec_N2_HIGHMEM_2,
  RamMetric_MachineSpec_N2_HIGHMEM_4,
  RamMetric_MachineSpec_N2_HIGHMEM_8,
  RamMetric_MachineSpec_N2_HIGHMEM_16,
  RamMetric_MachineSpec_N2_HIGHMEM_32,
  RamMetric_MachineSpec_N2_HIGHMEM_48,
  RamMetric_MachineSpec_N2_HIGHMEM_64,
  RamMetric_MachineSpec_N2_HIGHMEM_80,
  RamMetric_MachineSpec_N2_HIGHMEM_96,
  RamMetric_MachineSpec_N2_HIGHMEM_128,
  RamMetric_MachineSpec_N2_HIGHCPU_2,
  RamMetric_MachineSpec_N2_HIGHCPU_4,
  RamMetric_MachineSpec_N2_HIGHCPU_8,
  RamMetric_MachineSpec_N2_HIGHCPU_16,
  RamMetric_MachineSpec_N2_HIGHCPU_32,
  RamMetric_MachineSpec_N2_HIGHCPU_48,
  RamMetric_MachineSpec_N2_HIGHCPU_64,
  RamMetric_MachineSpec_N2_HIGHCPU_80,
  RamMetric_MachineSpec_N2_HIGHCPU_96,
  RamMetric_MachineSpec_N2D_STANDARD_2,
  RamMetric_MachineSpec_N2D_STANDARD_4,
  RamMetric_MachineSpec_N2D_STANDARD_8,
  RamMetric_MachineSpec_N2D_STANDARD_16,
  RamMetric_MachineSpec_N2D_STANDARD_32,
  RamMetric_MachineSpec_N2D_STANDARD_48,
  RamMetric_MachineSpec_N2D_STANDARD_64,
  RamMetric_MachineSpec_N2D_STANDARD_80,
  RamMetric_MachineSpec_N2D_STANDARD_96,
  RamMetric_MachineSpec_N2D_STANDARD_128,
  RamMetric_MachineSpec_N2D_STANDARD_224,
  RamMetric_MachineSpec_N2D_HIGHMEM_2,
  RamMetric_MachineSpec_N2D_HIGHMEM_4,
  RamMetric_MachineSpec_N2D_HIGHMEM_8,
  RamMetric_MachineSpec_N2D_HIGHMEM_16,
  RamMetric_MachineSpec_N2D_HIGHMEM_32,
  RamMetric_MachineSpec_N2D_HIGHMEM_48,
  RamMetric_MachineSpec_N2D_HIGHMEM_64,
  RamMetric_MachineSpec_N2D_HIGHMEM_80,
  RamMetric_MachineSpec_N2D_HIGHMEM_96,
  RamMetric_MachineSpec_N2D_HIGHCPU_2,
  RamMetric_MachineSpec_N2D_HIGHCPU_4,
  RamMetric_MachineSpec_N2D_HIGHCPU_8,
  RamMetric_MachineSpec_N2D_HIGHCPU_16,
  RamMetric_MachineSpec_N2D_HIGHCPU_32,
  RamMetric_MachineSpec_N2D_HIGHCPU_48,
  RamMetric_MachineSpec_N2D_HIGHCPU_64,
  RamMetric_MachineSpec_N2D_HIGHCPU_80,
  RamMetric_MachineSpec_N2D_HIGHCPU_96,
  RamMetric_MachineSpec_N2D_HIGHCPU_128,
  RamMetric_MachineSpec_N2D_HIGHCPU_224,
  RamMetric_MachineSpec_C2_STANDARD_4,
  RamMetric_MachineSpec_C2_STANDARD_8,
  RamMetric_MachineSpec_C2_STANDARD_16,
  RamMetric_MachineSpec_C2_STANDARD_30,
  RamMetric_MachineSpec_C2_STANDARD_60,
  RamMetric_MachineSpec_C2D_STANDARD_2,
  RamMetric_MachineSpec_C2D_STANDARD_4,
  RamMetric_MachineSpec_C2D_STANDARD_8,
  RamMetric_MachineSpec_C2D_STANDARD_16,
  RamMetric_MachineSpec_C2D_STANDARD_32,
  RamMetric_MachineSpec_C2D_STANDARD_56,
  RamMetric_MachineSpec_C2D_STANDARD_112,
  RamMetric_MachineSpec_C2D_HIGHCPU_2,
  RamMetric_MachineSpec_C2D_HIGHCPU_4,
  RamMetric_MachineSpec_C2D_HIGHCPU_8,
  RamMetric_MachineSpec_C2D_HIGHCPU_16,
  RamMetric_MachineSpec_C2D_HIGHCPU_32,
  RamMetric_MachineSpec_C2D_HIGHCPU_56,
  RamMetric_MachineSpec_C2D_HIGHCPU_112,
  RamMetric_MachineSpec_C2D_HIGHMEM_2,
  RamMetric_MachineSpec_C2D_HIGHMEM_4,
  RamMetric_MachineSpec_C2D_HIGHMEM_8,
  RamMetric_MachineSpec_C2D_HIGHMEM_16,
  RamMetric_MachineSpec_C2D_HIGHMEM_32,
  RamMetric_MachineSpec_C2D_HIGHMEM_56,
  RamMetric_MachineSpec_C2D_HIGHMEM_112,
  RamMetric_MachineSpec_G2_STANDARD_4,
  RamMetric_MachineSpec_G2_STANDARD_8,
  RamMetric_MachineSpec_G2_STANDARD_12,
  RamMetric_MachineSpec_G2_STANDARD_16,
  RamMetric_MachineSpec_G2_STANDARD_24,
  RamMetric_MachineSpec_G2_STANDARD_32,
  RamMetric_MachineSpec_G2_STANDARD_48,
  RamMetric_MachineSpec_G2_STANDARD_96,
  RamMetric_MachineSpec_C3_STANDARD_4,
  RamMetric_MachineSpec_C3_STANDARD_8,
  RamMetric_MachineSpec_C3_STANDARD_22,
  RamMetric_MachineSpec_C3_STANDARD_44,
  RamMetric_MachineSpec_C3_STANDARD_88,
  RamMetric_MachineSpec_C3_STANDARD_176,
  RamMetric_MachineSpec_C3_HIGHCPU_4,
  RamMetric_MachineSpec_C3_HIGHCPU_8,
  RamMetric_MachineSpec_C3_HIGHCPU_22,
  RamMetric_MachineSpec_C3_HIGHCPU_44,
  RamMetric_MachineSpec_C3_HIGHCPU_88,
  RamMetric_MachineSpec_C3_HIGHCPU_176,
  RamMetric_MachineSpec_C3_HIGHMEM_4,
  RamMetric_MachineSpec_C3_HIGHMEM_8,
  RamMetric_MachineSpec_C3_HIGHMEM_22,
  RamMetric_MachineSpec_C3_HIGHMEM_44,
  RamMetric_MachineSpec_C3_HIGHMEM_88,
  RamMetric_MachineSpec_C3_HIGHMEM_176,
  RamMetric_MachineSpec
  #-}

-- | Required. Type of ram.
newtype RamMetric_RamType = RamMetric_RamType {fromRamMetric_RamType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern RamMetric_RamType_UNKNOWNRAMTYPE :: RamMetric_RamType
pattern RamMetric_RamType_UNKNOWNRAMTYPE = RamMetric_RamType "UNKNOWN_RAM_TYPE"

pattern RamMetric_RamType_A2 :: RamMetric_RamType
pattern RamMetric_RamType_A2 = RamMetric_RamType "A2"

pattern RamMetric_RamType_A3 :: RamMetric_RamType
pattern RamMetric_RamType_A3 = RamMetric_RamType "A3"

-- | COMPUTE_OPTIMIZED
pattern RamMetric_RamType_C2 :: RamMetric_RamType
pattern RamMetric_RamType_C2 = RamMetric_RamType "C2"

pattern RamMetric_RamType_C2D :: RamMetric_RamType
pattern RamMetric_RamType_C2D = RamMetric_RamType "C2D"

pattern RamMetric_RamType_Custom :: RamMetric_RamType
pattern RamMetric_RamType_Custom = RamMetric_RamType "CUSTOM"

pattern RamMetric_RamType_E2 :: RamMetric_RamType
pattern RamMetric_RamType_E2 = RamMetric_RamType "E2"

pattern RamMetric_RamType_G2 :: RamMetric_RamType
pattern RamMetric_RamType_G2 = RamMetric_RamType "G2"

pattern RamMetric_RamType_C3 :: RamMetric_RamType
pattern RamMetric_RamType_C3 = RamMetric_RamType "C3"

-- | MEMORY/OPTIMIZED/UPGRADE_PREMIUM
pattern RamMetric_RamType_M2 :: RamMetric_RamType
pattern RamMetric_RamType_M2 = RamMetric_RamType "M2"

-- | MEMORY_OPTIMIZED
pattern RamMetric_RamType_M1 :: RamMetric_RamType
pattern RamMetric_RamType_M1 = RamMetric_RamType "M1"

pattern RamMetric_RamType_N1 :: RamMetric_RamType
pattern RamMetric_RamType_N1 = RamMetric_RamType "N1"

pattern RamMetric_RamType_N2CUSTOM :: RamMetric_RamType
pattern RamMetric_RamType_N2CUSTOM = RamMetric_RamType "N2_CUSTOM"

pattern RamMetric_RamType_N2 :: RamMetric_RamType
pattern RamMetric_RamType_N2 = RamMetric_RamType "N2"

pattern RamMetric_RamType_N2D :: RamMetric_RamType
pattern RamMetric_RamType_N2D = RamMetric_RamType "N2D"

{-# COMPLETE
  RamMetric_RamType_UNKNOWNRAMTYPE,
  RamMetric_RamType_A2,
  RamMetric_RamType_A3,
  RamMetric_RamType_C2,
  RamMetric_RamType_C2D,
  RamMetric_RamType_Custom,
  RamMetric_RamType_E2,
  RamMetric_RamType_G2,
  RamMetric_RamType_C3,
  RamMetric_RamType_M2,
  RamMetric_RamType_M1,
  RamMetric_RamType_N1,
  RamMetric_RamType_N2CUSTOM,
  RamMetric_RamType_N2,
  RamMetric_RamType_N2D,
  RamMetric_RamType
  #-}

-- | Required. Type of TPU, e.g. TPU/V2, TPU/V3_POD.
newtype TpuMetric_TpuType = TpuMetric_TpuType {fromTpuMetric_TpuType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern TpuMetric_TpuType_UNKNOWNTPUTYPE :: TpuMetric_TpuType
pattern TpuMetric_TpuType_UNKNOWNTPUTYPE = TpuMetric_TpuType "UNKNOWN_TPU_TYPE"

pattern TpuMetric_TpuType_TPUV2POD :: TpuMetric_TpuType
pattern TpuMetric_TpuType_TPUV2POD = TpuMetric_TpuType "TPU_V2_POD"

pattern TpuMetric_TpuType_TPU_V2 :: TpuMetric_TpuType
pattern TpuMetric_TpuType_TPU_V2 = TpuMetric_TpuType "TPU_V2"

pattern TpuMetric_TpuType_TPUV3POD :: TpuMetric_TpuType
pattern TpuMetric_TpuType_TPUV3POD = TpuMetric_TpuType "TPU_V3_POD"

pattern TpuMetric_TpuType_TPU_V3 :: TpuMetric_TpuType
pattern TpuMetric_TpuType_TPU_V3 = TpuMetric_TpuType "TPU_V3"

pattern TpuMetric_TpuType_TPUV5LITEPOD :: TpuMetric_TpuType
pattern TpuMetric_TpuType_TPUV5LITEPOD = TpuMetric_TpuType "TPU_V5_LITEPOD"

{-# COMPLETE
  TpuMetric_TpuType_UNKNOWNTPUTYPE,
  TpuMetric_TpuType_TPUV2POD,
  TpuMetric_TpuType_TPU_V2,
  TpuMetric_TpuType_TPUV3POD,
  TpuMetric_TpuType_TPU_V3,
  TpuMetric_TpuType_TPUV5LITEPOD,
  TpuMetric_TpuType
  #-}

-- | The type of the column for FORECASTING model training purposes.
newtype XPSColumnSpecForecastingMetadata_ColumnType = XPSColumnSpecForecastingMetadata_ColumnType {fromXPSColumnSpecForecastingMetadata_ColumnType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | An un-set value of this enum.
pattern XPSColumnSpecForecastingMetadata_ColumnType_COLUMNTYPEUNSPECIFIED :: XPSColumnSpecForecastingMetadata_ColumnType
pattern XPSColumnSpecForecastingMetadata_ColumnType_COLUMNTYPEUNSPECIFIED = XPSColumnSpecForecastingMetadata_ColumnType "COLUMN_TYPE_UNSPECIFIED"

-- | Key columns are used to identify timeseries.
pattern XPSColumnSpecForecastingMetadata_ColumnType_Key :: XPSColumnSpecForecastingMetadata_ColumnType
pattern XPSColumnSpecForecastingMetadata_ColumnType_Key = XPSColumnSpecForecastingMetadata_ColumnType "KEY"

-- | This column contains information describing static properties of the entities identified by the key column(s) (e.g. city\'s ZIP code).
pattern XPSColumnSpecForecastingMetadata_ColumnType_KEYMETADATA :: XPSColumnSpecForecastingMetadata_ColumnType
pattern XPSColumnSpecForecastingMetadata_ColumnType_KEYMETADATA = XPSColumnSpecForecastingMetadata_ColumnType "KEY_METADATA"

-- | This column contains information for the given entity, at any time poinrt, they are only available in the time series before.
pattern XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTONLY :: XPSColumnSpecForecastingMetadata_ColumnType
pattern XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTONLY = XPSColumnSpecForecastingMetadata_ColumnType "TIME_SERIES_AVAILABLE_PAST_ONLY"

-- | This column contains information for the given entity is known both for the past and the sufficiently far future.
pattern XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTANDFUTURE :: XPSColumnSpecForecastingMetadata_ColumnType
pattern XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTANDFUTURE = XPSColumnSpecForecastingMetadata_ColumnType "TIME_SERIES_AVAILABLE_PAST_AND_FUTURE"

{-# COMPLETE
  XPSColumnSpecForecastingMetadata_ColumnType_COLUMNTYPEUNSPECIFIED,
  XPSColumnSpecForecastingMetadata_ColumnType_Key,
  XPSColumnSpecForecastingMetadata_ColumnType_KEYMETADATA,
  XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTONLY,
  XPSColumnSpecForecastingMetadata_ColumnType_TIMESERIESAVAILABLEPASTANDFUTURE,
  XPSColumnSpecForecastingMetadata_ColumnType
  #-}

-- | Type of the error.
newtype XPSDataErrors_ErrorType = XPSDataErrors_ErrorType {fromXPSDataErrors_ErrorType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified.
pattern XPSDataErrors_ErrorType_ERRORTYPEUNSPECIFIED :: XPSDataErrors_ErrorType
pattern XPSDataErrors_ErrorType_ERRORTYPEUNSPECIFIED = XPSDataErrors_ErrorType "ERROR_TYPE_UNSPECIFIED"

-- | Audio format not in the formats by cloud-speech AutoML. Currently only wav and flac file formats are supported.
pattern XPSDataErrors_ErrorType_UNSUPPORTEDAUDIOFORMAT :: XPSDataErrors_ErrorType
pattern XPSDataErrors_ErrorType_UNSUPPORTEDAUDIOFORMAT = XPSDataErrors_ErrorType "UNSUPPORTED_AUDIO_FORMAT"

-- | File format differnt from what is specified in the file name extension.
pattern XPSDataErrors_ErrorType_FILEEXTENSIONMISMATCHWITHAUDIOFORMAT :: XPSDataErrors_ErrorType
pattern XPSDataErrors_ErrorType_FILEEXTENSIONMISMATCHWITHAUDIOFORMAT = XPSDataErrors_ErrorType "FILE_EXTENSION_MISMATCH_WITH_AUDIO_FORMAT"

-- | File too large. Maximum allowed size is 50 MB.
pattern XPSDataErrors_ErrorType_FILETOOLARGE :: XPSDataErrors_ErrorType
pattern XPSDataErrors_ErrorType_FILETOOLARGE = XPSDataErrors_ErrorType "FILE_TOO_LARGE"

-- | Transcript is missing.
pattern XPSDataErrors_ErrorType_MISSINGTRANSCRIPTION :: XPSDataErrors_ErrorType
pattern XPSDataErrors_ErrorType_MISSINGTRANSCRIPTION = XPSDataErrors_ErrorType "MISSING_TRANSCRIPTION"

{-# COMPLETE
  XPSDataErrors_ErrorType_ERRORTYPEUNSPECIFIED,
  XPSDataErrors_ErrorType_UNSUPPORTEDAUDIOFORMAT,
  XPSDataErrors_ErrorType_FILEEXTENSIONMISMATCHWITHAUDIOFORMAT,
  XPSDataErrors_ErrorType_FILETOOLARGE,
  XPSDataErrors_ErrorType_MISSINGTRANSCRIPTION,
  XPSDataErrors_ErrorType
  #-}

-- | Required. The TypeCode for this type.
newtype XPSDataType_TypeCode = XPSDataType_TypeCode {fromXPSDataType_TypeCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified. Should not be used.
pattern XPSDataType_TypeCode_TYPECODEUNSPECIFIED :: XPSDataType_TypeCode
pattern XPSDataType_TypeCode_TYPECODEUNSPECIFIED = XPSDataType_TypeCode "TYPE_CODE_UNSPECIFIED"

-- | Encoded as @number@, or the strings @\"NaN\"@, @\"Infinity\"@, or @\"-Infinity\"@.
pattern XPSDataType_TypeCode_FLOAT64 :: XPSDataType_TypeCode
pattern XPSDataType_TypeCode_FLOAT64 = XPSDataType_TypeCode "FLOAT64"

-- | Must be between 0AD and 9999AD. Encoded as @string@ according to time_format, or, if that format is not set, then in RFC 3339 @date-time@ format, where @time-offset@ = @\"Z\"@ (e.g. 1985-04-12T23:20:50.52Z).
pattern XPSDataType_TypeCode_Timestamp :: XPSDataType_TypeCode
pattern XPSDataType_TypeCode_Timestamp = XPSDataType_TypeCode "TIMESTAMP"

-- | Encoded as @string@.
pattern XPSDataType_TypeCode_String :: XPSDataType_TypeCode
pattern XPSDataType_TypeCode_String = XPSDataType_TypeCode "STRING"

-- | Encoded as @list@, where the list elements are represented according to list/element/type.
pattern XPSDataType_TypeCode_Array :: XPSDataType_TypeCode
pattern XPSDataType_TypeCode_Array = XPSDataType_TypeCode "ARRAY"

-- | Encoded as @struct@, where field values are represented according to struct_type.
pattern XPSDataType_TypeCode_Struct :: XPSDataType_TypeCode
pattern XPSDataType_TypeCode_Struct = XPSDataType_TypeCode "STRUCT"

-- | Values of this type are not further understood by AutoML, e.g. AutoML is unable to tell the order of values (as it could with FLOAT64), or is unable to say if one value contains another (as it could with STRING). Encoded as @string@ (bytes should be base64-encoded, as described in RFC 4648, section 4).
pattern XPSDataType_TypeCode_Category :: XPSDataType_TypeCode
pattern XPSDataType_TypeCode_Category = XPSDataType_TypeCode "CATEGORY"

{-# COMPLETE
  XPSDataType_TypeCode_TYPECODEUNSPECIFIED,
  XPSDataType_TypeCode_FLOAT64,
  XPSDataType_TypeCode_Timestamp,
  XPSDataType_TypeCode_String,
  XPSDataType_TypeCode_Array,
  XPSDataType_TypeCode_Struct,
  XPSDataType_TypeCode_Category,
  XPSDataType_TypeCode
  #-}

-- | Optional. Additional cpu information describing the requirements for the to be exported model files.
newtype XPSDockerFormat_CpuArchitecture = XPSDockerFormat_CpuArchitecture {fromXPSDockerFormat_CpuArchitecture :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSDockerFormat_CpuArchitecture_CPUARCHITECTUREUNSPECIFIED :: XPSDockerFormat_CpuArchitecture
pattern XPSDockerFormat_CpuArchitecture_CPUARCHITECTUREUNSPECIFIED = XPSDockerFormat_CpuArchitecture "CPU_ARCHITECTURE_UNSPECIFIED"

pattern XPSDockerFormat_CpuArchitecture_CPU_ARCHITECTURE_X86_64 :: XPSDockerFormat_CpuArchitecture
pattern XPSDockerFormat_CpuArchitecture_CPU_ARCHITECTURE_X86_64 = XPSDockerFormat_CpuArchitecture "CPU_ARCHITECTURE_X86_64"

{-# COMPLETE
  XPSDockerFormat_CpuArchitecture_CPUARCHITECTUREUNSPECIFIED,
  XPSDockerFormat_CpuArchitecture_CPU_ARCHITECTURE_X86_64,
  XPSDockerFormat_CpuArchitecture
  #-}

-- | Optional. Additional gpu information describing the requirements for the to be exported model files.
newtype XPSDockerFormat_GpuArchitecture = XPSDockerFormat_GpuArchitecture {fromXPSDockerFormat_GpuArchitecture :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSDockerFormat_GpuArchitecture_GPUARCHITECTUREUNSPECIFIED :: XPSDockerFormat_GpuArchitecture
pattern XPSDockerFormat_GpuArchitecture_GPUARCHITECTUREUNSPECIFIED = XPSDockerFormat_GpuArchitecture "GPU_ARCHITECTURE_UNSPECIFIED"

pattern XPSDockerFormat_GpuArchitecture_GPUARCHITECTURENVIDIA :: XPSDockerFormat_GpuArchitecture
pattern XPSDockerFormat_GpuArchitecture_GPUARCHITECTURENVIDIA = XPSDockerFormat_GpuArchitecture "GPU_ARCHITECTURE_NVIDIA"

{-# COMPLETE
  XPSDockerFormat_GpuArchitecture_GPUARCHITECTUREUNSPECIFIED,
  XPSDockerFormat_GpuArchitecture_GPUARCHITECTURENVIDIA,
  XPSDockerFormat_GpuArchitecture
  #-}

newtype XPSFileSpec_FileFormat = XPSFileSpec_FileFormat {fromXPSFileSpec_FileFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSFileSpec_FileFormat_FILEFORMATUNKNOWN :: XPSFileSpec_FileFormat
pattern XPSFileSpec_FileFormat_FILEFORMATUNKNOWN = XPSFileSpec_FileFormat "FILE_FORMAT_UNKNOWN"

pattern XPSFileSpec_FileFormat_FILEFORMATSSTABLE :: XPSFileSpec_FileFormat
pattern XPSFileSpec_FileFormat_FILEFORMATSSTABLE = XPSFileSpec_FileFormat "FILE_FORMAT_SSTABLE"

-- | Internal format for parallel text data used by Google Translate.
pattern XPSFileSpec_FileFormat_FILEFORMATTRANSLATIONRKV :: XPSFileSpec_FileFormat
pattern XPSFileSpec_FileFormat_FILEFORMATTRANSLATIONRKV = XPSFileSpec_FileFormat "FILE_FORMAT_TRANSLATION_RKV"

pattern XPSFileSpec_FileFormat_FILEFORMATRECORDIO :: XPSFileSpec_FileFormat
pattern XPSFileSpec_FileFormat_FILEFORMATRECORDIO = XPSFileSpec_FileFormat "FILE_FORMAT_RECORDIO"

-- | Only the lexicographically first file described by the file_spec contains the header line.
pattern XPSFileSpec_FileFormat_FILEFORMATRAWCSV :: XPSFileSpec_FileFormat
pattern XPSFileSpec_FileFormat_FILEFORMATRAWCSV = XPSFileSpec_FileFormat "FILE_FORMAT_RAW_CSV"

pattern XPSFileSpec_FileFormat_FILEFORMATRAWCAPACITOR :: XPSFileSpec_FileFormat
pattern XPSFileSpec_FileFormat_FILEFORMATRAWCAPACITOR = XPSFileSpec_FileFormat "FILE_FORMAT_RAW_CAPACITOR"

{-# COMPLETE
  XPSFileSpec_FileFormat_FILEFORMATUNKNOWN,
  XPSFileSpec_FileFormat_FILEFORMATSSTABLE,
  XPSFileSpec_FileFormat_FILEFORMATTRANSLATIONRKV,
  XPSFileSpec_FileFormat_FILEFORMATRECORDIO,
  XPSFileSpec_FileFormat_FILEFORMATRAWCSV,
  XPSFileSpec_FileFormat_FILEFORMATRAWCAPACITOR,
  XPSFileSpec_FileFormat
  #-}

-- | Stop reason for training job, e.g. \'TRAIN/BUDGET/REACHED\', \'MODEL/CONVERGED\', \'MODEL/EARLY_STOPPED\'.
newtype XPSImageClassificationTrainResponse_StopReason = XPSImageClassificationTrainResponse_StopReason {fromXPSImageClassificationTrainResponse_StopReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED :: XPSImageClassificationTrainResponse_StopReason
pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED = XPSImageClassificationTrainResponse_StopReason "TRAIN_STOP_REASON_UNSPECIFIED"

pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED :: XPSImageClassificationTrainResponse_StopReason
pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED = XPSImageClassificationTrainResponse_StopReason "TRAIN_STOP_REASON_BUDGET_REACHED"

-- | Model fully converged, can not be resumbed training.
pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED :: XPSImageClassificationTrainResponse_StopReason
pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED = XPSImageClassificationTrainResponse_StopReason "TRAIN_STOP_REASON_MODEL_CONVERGED"

-- | Model early converged, can be further trained till full convergency.
pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED :: XPSImageClassificationTrainResponse_StopReason
pattern XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED = XPSImageClassificationTrainResponse_StopReason "TRAIN_STOP_REASON_MODEL_EARLY_STOPPED"

{-# COMPLETE
  XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED,
  XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED,
  XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED,
  XPSImageClassificationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED,
  XPSImageClassificationTrainResponse_StopReason
  #-}

newtype XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType {fromXPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_Unspecified :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_Unspecified = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "UNSPECIFIED"

-- | Nvidia Tesla K80 GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_K80 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_K80 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_TESLA_K80"

-- | Nvidia Tesla P100 GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P100 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P100 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_TESLA_P100"

-- | Nvidia Tesla V100 GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_V100 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_V100 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_TESLA_V100"

-- | Nvidia Tesla P4 GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P4 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P4 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_TESLA_P4"

-- | Nvidia Tesla T4 GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_T4 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_T4 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_TESLA_T4"

-- | Nvidia Tesla A100 GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_A100 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_A100 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_TESLA_A100"

-- | Nvidia A100 80GB GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAA10080GB :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAA10080GB = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_A100_80GB"

-- | Nvidia L4 GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_L4 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_L4 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_L4"

-- | Nvidia H100 80Gb GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH10080GB :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH10080GB = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_H100_80GB"

-- | Nvidia H100 80Gb GPU.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH100MEGA80GB :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH100MEGA80GB = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "NVIDIA_H100_MEGA_80GB"

-- | TPU v2 (JellyFish).
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V2 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V2 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "TPU_V2"

-- | TPU v3 (DragonFish).
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V3 :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V3 = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "TPU_V3"

-- | TPU_v4 (PufferFish).
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV4POD :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV4POD = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "TPU_V4_POD"

-- | TPU v5 Lite Pods.
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV5LITEPOD :: XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
pattern XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV5LITEPOD = XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType "TPU_V5_LITEPOD"

{-# COMPLETE
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_Unspecified,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_K80,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P100,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_V100,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_P4,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_T4,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_TESLA_A100,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAA10080GB,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIA_L4,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH10080GB,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_NVIDIAH100MEGA80GB,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V2,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPU_V3,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV4POD,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType_TPUV5LITEPOD,
  XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
  #-}

newtype XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType = XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType {fromXPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONTYPEUNSPECIFIED :: XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONTYPEUNSPECIFIED = XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType "PARTITION_TYPE_UNSPECIFIED"

-- | The default partition.
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONZERO :: XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONZERO = XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType "PARTITION_ZERO"

-- | It has significantly lower replication than partition-0 and is located in the US only. It also has a larger model size limit and higher default RAM quota than partition-0. Customers with batch traffic, US-based traffic, or very large models should use this partition. Capacity in this partition is significantly cheaper than partition-0.
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONREDUCEDHOMING :: XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONREDUCEDHOMING = XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType "PARTITION_REDUCED_HOMING"

-- | To be used by customers with Jellyfish-accelerated ops.
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONJELLYFISH :: XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONJELLYFISH = XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType "PARTITION_JELLYFISH"

-- | The partition used by regionalized servomatic cloud regions.
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCPU :: XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCPU = XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType "PARTITION_CPU"

-- | The partition used for loading models from custom storage.
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCUSTOMSTORAGECPU :: XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
pattern XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCUSTOMSTORAGECPU = XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType "PARTITION_CUSTOM_STORAGE_CPU"

{-# COMPLETE
  XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONTYPEUNSPECIFIED,
  XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONZERO,
  XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONREDUCEDHOMING,
  XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONJELLYFISH,
  XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCPU,
  XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType_PARTITIONCUSTOMSTORAGECPU,
  XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
  #-}

-- | Stop reason for training job, e.g. \'TRAIN/BUDGET/REACHED\', \'MODEL_CONVERGED\'.
newtype XPSImageObjectDetectionModelSpec_StopReason = XPSImageObjectDetectionModelSpec_StopReason {fromXPSImageObjectDetectionModelSpec_StopReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONUNSPECIFIED :: XPSImageObjectDetectionModelSpec_StopReason
pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONUNSPECIFIED = XPSImageObjectDetectionModelSpec_StopReason "TRAIN_STOP_REASON_UNSPECIFIED"

pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONBUDGETREACHED :: XPSImageObjectDetectionModelSpec_StopReason
pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONBUDGETREACHED = XPSImageObjectDetectionModelSpec_StopReason "TRAIN_STOP_REASON_BUDGET_REACHED"

-- | Model fully converged, can not be resumbed training.
pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELCONVERGED :: XPSImageObjectDetectionModelSpec_StopReason
pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELCONVERGED = XPSImageObjectDetectionModelSpec_StopReason "TRAIN_STOP_REASON_MODEL_CONVERGED"

-- | Model early converged, can be further trained till full convergency.
pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED :: XPSImageObjectDetectionModelSpec_StopReason
pattern XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED = XPSImageObjectDetectionModelSpec_StopReason "TRAIN_STOP_REASON_MODEL_EARLY_STOPPED"

{-# COMPLETE
  XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONUNSPECIFIED,
  XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONBUDGETREACHED,
  XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELCONVERGED,
  XPSImageObjectDetectionModelSpec_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED,
  XPSImageObjectDetectionModelSpec_StopReason
  #-}

-- | Stop reason for training job, e.g. \'TRAIN/BUDGET/REACHED\', \'MODEL_CONVERGED\'.
newtype XPSImageSegmentationTrainResponse_StopReason = XPSImageSegmentationTrainResponse_StopReason {fromXPSImageSegmentationTrainResponse_StopReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED :: XPSImageSegmentationTrainResponse_StopReason
pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED = XPSImageSegmentationTrainResponse_StopReason "TRAIN_STOP_REASON_UNSPECIFIED"

pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED :: XPSImageSegmentationTrainResponse_StopReason
pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED = XPSImageSegmentationTrainResponse_StopReason "TRAIN_STOP_REASON_BUDGET_REACHED"

-- | Model fully converged, can not be resumbed training.
pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED :: XPSImageSegmentationTrainResponse_StopReason
pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED = XPSImageSegmentationTrainResponse_StopReason "TRAIN_STOP_REASON_MODEL_CONVERGED"

-- | Model early converged, can be further trained till full convergency.
pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED :: XPSImageSegmentationTrainResponse_StopReason
pattern XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED = XPSImageSegmentationTrainResponse_StopReason "TRAIN_STOP_REASON_MODEL_EARLY_STOPPED"

{-# COMPLETE
  XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONUNSPECIFIED,
  XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONBUDGETREACHED,
  XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELCONVERGED,
  XPSImageSegmentationTrainResponse_StopReason_TRAINSTOPREASONMODELEARLYSTOPPED,
  XPSImageSegmentationTrainResponse_StopReason
  #-}

-- | The model artifact format.
newtype XPSModelArtifactItem_ArtifactFormat = XPSModelArtifactItem_ArtifactFormat {fromXPSModelArtifactItem_ArtifactFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Should not be used.
pattern XPSModelArtifactItem_ArtifactFormat_ARTIFACTFORMATUNSPECIFIED :: XPSModelArtifactItem_ArtifactFormat
pattern XPSModelArtifactItem_ArtifactFormat_ARTIFACTFORMATUNSPECIFIED = XPSModelArtifactItem_ArtifactFormat "ARTIFACT_FORMAT_UNSPECIFIED"

-- | The Tensorflow checkpoints. See https:\/\/www.tensorflow.org\/guide\/checkpoint.
pattern XPSModelArtifactItem_ArtifactFormat_TFCHECKPOINT :: XPSModelArtifactItem_ArtifactFormat
pattern XPSModelArtifactItem_ArtifactFormat_TFCHECKPOINT = XPSModelArtifactItem_ArtifactFormat "TF_CHECKPOINT"

-- | The Tensorflow SavedModel binary.
pattern XPSModelArtifactItem_ArtifactFormat_TFSAVEDMODEL :: XPSModelArtifactItem_ArtifactFormat
pattern XPSModelArtifactItem_ArtifactFormat_TFSAVEDMODEL = XPSModelArtifactItem_ArtifactFormat "TF_SAVED_MODEL"

-- | Model artifact in generic TensorFlow Lite (.tflite) format. See https:\/\/www.tensorflow.org\/lite.
pattern XPSModelArtifactItem_ArtifactFormat_TFLITE :: XPSModelArtifactItem_ArtifactFormat
pattern XPSModelArtifactItem_ArtifactFormat_TFLITE = XPSModelArtifactItem_ArtifactFormat "TF_LITE"

-- | Used for <https://cloud.google.com/edge-tpu/ Edge TPU> devices.
pattern XPSModelArtifactItem_ArtifactFormat_EDGETPUTFLITE :: XPSModelArtifactItem_ArtifactFormat
pattern XPSModelArtifactItem_ArtifactFormat_EDGETPUTFLITE = XPSModelArtifactItem_ArtifactFormat "EDGE_TPU_TF_LITE"

-- | A <https://www.tensorflow.org/js TensorFlow.js> model that can be used in the browser and in Node.js using JavaScript.
pattern XPSModelArtifactItem_ArtifactFormat_TFJS :: XPSModelArtifactItem_ArtifactFormat
pattern XPSModelArtifactItem_ArtifactFormat_TFJS = XPSModelArtifactItem_ArtifactFormat "TF_JS"

-- | Used for iOS mobile devices in (.mlmodel) format. See https:\/\/developer.apple.com\/documentation\/coreml
pattern XPSModelArtifactItem_ArtifactFormat_COREML :: XPSModelArtifactItem_ArtifactFormat
pattern XPSModelArtifactItem_ArtifactFormat_COREML = XPSModelArtifactItem_ArtifactFormat "CORE_ML"

{-# COMPLETE
  XPSModelArtifactItem_ArtifactFormat_ARTIFACTFORMATUNSPECIFIED,
  XPSModelArtifactItem_ArtifactFormat_TFCHECKPOINT,
  XPSModelArtifactItem_ArtifactFormat_TFSAVEDMODEL,
  XPSModelArtifactItem_ArtifactFormat_TFLITE,
  XPSModelArtifactItem_ArtifactFormat_EDGETPUTFLITE,
  XPSModelArtifactItem_ArtifactFormat_TFJS,
  XPSModelArtifactItem_ArtifactFormat_COREML,
  XPSModelArtifactItem_ArtifactFormat
  #-}

-- | Modality of the feature. Valid values are: numeric, image. Defaults to numeric.
newtype XPSResponseExplanationMetadataInputMetadata_Modality = XPSResponseExplanationMetadataInputMetadata_Modality {fromXPSResponseExplanationMetadataInputMetadata_Modality :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSResponseExplanationMetadataInputMetadata_Modality_MODALITYUNSPECIFIED :: XPSResponseExplanationMetadataInputMetadata_Modality
pattern XPSResponseExplanationMetadataInputMetadata_Modality_MODALITYUNSPECIFIED = XPSResponseExplanationMetadataInputMetadata_Modality "MODALITY_UNSPECIFIED"

pattern XPSResponseExplanationMetadataInputMetadata_Modality_Numeric :: XPSResponseExplanationMetadataInputMetadata_Modality
pattern XPSResponseExplanationMetadataInputMetadata_Modality_Numeric = XPSResponseExplanationMetadataInputMetadata_Modality "NUMERIC"

pattern XPSResponseExplanationMetadataInputMetadata_Modality_Image :: XPSResponseExplanationMetadataInputMetadata_Modality
pattern XPSResponseExplanationMetadataInputMetadata_Modality_Image = XPSResponseExplanationMetadataInputMetadata_Modality "IMAGE"

pattern XPSResponseExplanationMetadataInputMetadata_Modality_Categorical :: XPSResponseExplanationMetadataInputMetadata_Modality
pattern XPSResponseExplanationMetadataInputMetadata_Modality_Categorical = XPSResponseExplanationMetadataInputMetadata_Modality "CATEGORICAL"

{-# COMPLETE
  XPSResponseExplanationMetadataInputMetadata_Modality_MODALITYUNSPECIFIED,
  XPSResponseExplanationMetadataInputMetadata_Modality_Numeric,
  XPSResponseExplanationMetadataInputMetadata_Modality_Image,
  XPSResponseExplanationMetadataInputMetadata_Modality_Categorical,
  XPSResponseExplanationMetadataInputMetadata_Modality
  #-}

-- | Type of the biasing model.
newtype XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType = XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType {fromXPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED :: XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED = XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType "BIASING_MODEL_TYPE_UNSPECIFIED"

-- | Build biasing model on top of COMMAND/AND/SEARCH model
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_COMMANDANDSEARCH :: XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_COMMANDANDSEARCH = XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType "COMMAND_AND_SEARCH"

-- | Build biasing model on top of PHONE_CALL model
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_PHONECALL :: XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_PHONECALL = XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType "PHONE_CALL"

-- | Build biasing model on top of VIDEO model
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Video :: XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Video = XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType "VIDEO"

-- | Build biasing model on top of DEFAULT model
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Default :: XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
pattern XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Default = XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType "DEFAULT"

{-# COMPLETE
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED,
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_COMMANDANDSEARCH,
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_PHONECALL,
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Video,
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType_Default,
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
  #-}

-- | Type of the biasing model.
newtype XPSSpeechModelSpecSubModelSpec_BiasingModelType = XPSSpeechModelSpecSubModelSpec_BiasingModelType {fromXPSSpeechModelSpecSubModelSpec_BiasingModelType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED :: XPSSpeechModelSpecSubModelSpec_BiasingModelType
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED = XPSSpeechModelSpecSubModelSpec_BiasingModelType "BIASING_MODEL_TYPE_UNSPECIFIED"

-- | Build biasing model on top of COMMAND/AND/SEARCH model
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_COMMANDANDSEARCH :: XPSSpeechModelSpecSubModelSpec_BiasingModelType
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_COMMANDANDSEARCH = XPSSpeechModelSpecSubModelSpec_BiasingModelType "COMMAND_AND_SEARCH"

-- | Build biasing model on top of PHONE_CALL model
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_PHONECALL :: XPSSpeechModelSpecSubModelSpec_BiasingModelType
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_PHONECALL = XPSSpeechModelSpecSubModelSpec_BiasingModelType "PHONE_CALL"

-- | Build biasing model on top of VIDEO model
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_Video :: XPSSpeechModelSpecSubModelSpec_BiasingModelType
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_Video = XPSSpeechModelSpecSubModelSpec_BiasingModelType "VIDEO"

-- | Build biasing model on top of DEFAULT model
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_Default :: XPSSpeechModelSpecSubModelSpec_BiasingModelType
pattern XPSSpeechModelSpecSubModelSpec_BiasingModelType_Default = XPSSpeechModelSpecSubModelSpec_BiasingModelType "DEFAULT"

{-# COMPLETE
  XPSSpeechModelSpecSubModelSpec_BiasingModelType_BIASINGMODELTYPEUNSPECIFIED,
  XPSSpeechModelSpecSubModelSpec_BiasingModelType_COMMANDANDSEARCH,
  XPSSpeechModelSpecSubModelSpec_BiasingModelType_PHONECALL,
  XPSSpeechModelSpecSubModelSpec_BiasingModelType_Video,
  XPSSpeechModelSpecSubModelSpec_BiasingModelType_Default,
  XPSSpeechModelSpecSubModelSpec_BiasingModelType
  #-}

-- | Current stage of creating model.
newtype XPSTablesTrainingOperationMetadata_CreateModelStage = XPSTablesTrainingOperationMetadata_CreateModelStage {fromXPSTablesTrainingOperationMetadata_CreateModelStage :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified stage.
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_CREATEMODELSTAGEUNSPECIFIED :: XPSTablesTrainingOperationMetadata_CreateModelStage
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_CREATEMODELSTAGEUNSPECIFIED = XPSTablesTrainingOperationMetadata_CreateModelStage "CREATE_MODEL_STAGE_UNSPECIFIED"

-- | Prepare the model training pipeline and run data processing.
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_DATAPREPROCESSING :: XPSTablesTrainingOperationMetadata_CreateModelStage
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_DATAPREPROCESSING = XPSTablesTrainingOperationMetadata_CreateModelStage "DATA_PREPROCESSING"

-- | Training model.
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_Training :: XPSTablesTrainingOperationMetadata_CreateModelStage
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_Training = XPSTablesTrainingOperationMetadata_CreateModelStage "TRAINING"

-- | Run evaluation.
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_Evaluating :: XPSTablesTrainingOperationMetadata_CreateModelStage
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_Evaluating = XPSTablesTrainingOperationMetadata_CreateModelStage "EVALUATING"

-- | Finalizing model training pipeline.
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_MODELPOSTPROCESSING :: XPSTablesTrainingOperationMetadata_CreateModelStage
pattern XPSTablesTrainingOperationMetadata_CreateModelStage_MODELPOSTPROCESSING = XPSTablesTrainingOperationMetadata_CreateModelStage "MODEL_POST_PROCESSING"

{-# COMPLETE
  XPSTablesTrainingOperationMetadata_CreateModelStage_CREATEMODELSTAGEUNSPECIFIED,
  XPSTablesTrainingOperationMetadata_CreateModelStage_DATAPREPROCESSING,
  XPSTablesTrainingOperationMetadata_CreateModelStage_Training,
  XPSTablesTrainingOperationMetadata_CreateModelStage_Evaluating,
  XPSTablesTrainingOperationMetadata_CreateModelStage_MODELPOSTPROCESSING,
  XPSTablesTrainingOperationMetadata_CreateModelStage
  #-}

-- | The partition where the model is deployed. Populated by uCAIP BE as part of online PredictRequest.
newtype XPSTextComponentModel_Partition = XPSTextComponentModel_Partition {fromXPSTextComponentModel_Partition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSTextComponentModel_Partition_PARTITIONTYPEUNSPECIFIED :: XPSTextComponentModel_Partition
pattern XPSTextComponentModel_Partition_PARTITIONTYPEUNSPECIFIED = XPSTextComponentModel_Partition "PARTITION_TYPE_UNSPECIFIED"

-- | The default partition.
pattern XPSTextComponentModel_Partition_PARTITIONZERO :: XPSTextComponentModel_Partition
pattern XPSTextComponentModel_Partition_PARTITIONZERO = XPSTextComponentModel_Partition "PARTITION_ZERO"

-- | It has significantly lower replication than partition-0 and is located in the US only. It also has a larger model size limit and higher default RAM quota than partition-0. Customers with batch traffic, US-based traffic, or very large models should use this partition. Capacity in this partition is significantly cheaper than partition-0.
pattern XPSTextComponentModel_Partition_PARTITIONREDUCEDHOMING :: XPSTextComponentModel_Partition
pattern XPSTextComponentModel_Partition_PARTITIONREDUCEDHOMING = XPSTextComponentModel_Partition "PARTITION_REDUCED_HOMING"

-- | To be used by customers with Jellyfish-accelerated ops.
pattern XPSTextComponentModel_Partition_PARTITIONJELLYFISH :: XPSTextComponentModel_Partition
pattern XPSTextComponentModel_Partition_PARTITIONJELLYFISH = XPSTextComponentModel_Partition "PARTITION_JELLYFISH"

-- | The partition used by regionalized servomatic cloud regions.
pattern XPSTextComponentModel_Partition_PARTITIONCPU :: XPSTextComponentModel_Partition
pattern XPSTextComponentModel_Partition_PARTITIONCPU = XPSTextComponentModel_Partition "PARTITION_CPU"

-- | The partition used for loading models from custom storage.
pattern XPSTextComponentModel_Partition_PARTITIONCUSTOMSTORAGECPU :: XPSTextComponentModel_Partition
pattern XPSTextComponentModel_Partition_PARTITIONCUSTOMSTORAGECPU = XPSTextComponentModel_Partition "PARTITION_CUSTOM_STORAGE_CPU"

{-# COMPLETE
  XPSTextComponentModel_Partition_PARTITIONTYPEUNSPECIFIED,
  XPSTextComponentModel_Partition_PARTITIONZERO,
  XPSTextComponentModel_Partition_PARTITIONREDUCEDHOMING,
  XPSTextComponentModel_Partition_PARTITIONJELLYFISH,
  XPSTextComponentModel_Partition_PARTITIONCPU,
  XPSTextComponentModel_Partition_PARTITIONCUSTOMSTORAGECPU,
  XPSTextComponentModel_Partition
  #-}

-- | The type of trained NL submodel
newtype XPSTextComponentModel_SubmodelType = XPSTextComponentModel_SubmodelType {fromXPSTextComponentModel_SubmodelType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEUNSPECIFIED :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEUNSPECIFIED = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_UNSPECIFIED"

pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEDEFAULT :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEDEFAULT = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_DEFAULT"

pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEMETAARCHITECT :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEMETAARCHITECT = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_META_ARCHITECT"

pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEATC :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEATC = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_ATC"

pattern XPSTextComponentModel_SubmodelType_TEXT_MODEL_TYPE_CLARA2 :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXT_MODEL_TYPE_CLARA2 = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_CLARA2"

pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPECHATBASE :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPECHATBASE = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_CHATBASE"

pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPESAFTSPANLABELING :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPESAFTSPANLABELING = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_SAFT_SPAN_LABELING"

-- | Model type for entity extraction.
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPETEXTEXTRACTION :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPETEXTEXTRACTION = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_TEXT_EXTRACTION"

-- | Model type for relationship extraction.
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPERELATIONSHIPEXTRACTION :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPERELATIONSHIPEXTRACTION = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_RELATIONSHIP_EXTRACTION"

-- | A composite model represents a set of component models that have to be used together for prediction. A composite model appears to be a single model to the model user. It may contain only one component model.
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPECOMPOSITE :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPECOMPOSITE = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_COMPOSITE"

-- | Model type used to train default, MA, and ATC models in a single batch worker pipeline.
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEALLMODELS :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEALLMODELS = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_ALL_MODELS"

-- | BERT pipeline needs a specific model type, since it uses a different TFX configuration compared with DEFAULT (despite sharing most of the code).
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEBERT :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEBERT = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_BERT"

-- | Model type for EncPaLM.
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEENCPALM :: XPSTextComponentModel_SubmodelType
pattern XPSTextComponentModel_SubmodelType_TEXTMODELTYPEENCPALM = XPSTextComponentModel_SubmodelType "TEXT_MODEL_TYPE_ENC_PALM"

{-# COMPLETE
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPEUNSPECIFIED,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPEDEFAULT,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPEMETAARCHITECT,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPEATC,
  XPSTextComponentModel_SubmodelType_TEXT_MODEL_TYPE_CLARA2,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPECHATBASE,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPESAFTSPANLABELING,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPETEXTEXTRACTION,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPERELATIONSHIPEXTRACTION,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPECOMPOSITE,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPEALLMODELS,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPEBERT,
  XPSTextComponentModel_SubmodelType_TEXTMODELTYPEENCPALM,
  XPSTextComponentModel_SubmodelType
  #-}

-- | Type of the model.
newtype XPSTranslationTrainResponse_ModelType = XPSTranslationTrainResponse_ModelType {fromXPSTranslationTrainResponse_ModelType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default
pattern XPSTranslationTrainResponse_ModelType_MODELTYPEUNSPECIFIED :: XPSTranslationTrainResponse_ModelType
pattern XPSTranslationTrainResponse_ModelType_MODELTYPEUNSPECIFIED = XPSTranslationTrainResponse_ModelType "MODEL_TYPE_UNSPECIFIED"

-- | Legacy model. Will be deprecated.
pattern XPSTranslationTrainResponse_ModelType_Legacy :: XPSTranslationTrainResponse_ModelType
pattern XPSTranslationTrainResponse_ModelType_Legacy = XPSTranslationTrainResponse_ModelType "LEGACY"

-- | Current model.
pattern XPSTranslationTrainResponse_ModelType_Current :: XPSTranslationTrainResponse_ModelType
pattern XPSTranslationTrainResponse_ModelType_Current = XPSTranslationTrainResponse_ModelType "CURRENT"

{-# COMPLETE
  XPSTranslationTrainResponse_ModelType_MODELTYPEUNSPECIFIED,
  XPSTranslationTrainResponse_ModelType_Legacy,
  XPSTranslationTrainResponse_ModelType_Current,
  XPSTranslationTrainResponse_ModelType
  #-}

-- | The query type used in retrieval. The enum values are frozen in the foreseeable future.
newtype XPSVisionErrorAnalysisConfig_QueryType = XPSVisionErrorAnalysisConfig_QueryType {fromXPSVisionErrorAnalysisConfig_QueryType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified query type for model error analysis.
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEUNSPECIFIED :: XPSVisionErrorAnalysisConfig_QueryType
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEUNSPECIFIED = XPSVisionErrorAnalysisConfig_QueryType "QUERY_TYPE_UNSPECIFIED"

-- | Query similar samples across all classes in the dataset.
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEALLSIMILAR :: XPSVisionErrorAnalysisConfig_QueryType
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEALLSIMILAR = XPSVisionErrorAnalysisConfig_QueryType "QUERY_TYPE_ALL_SIMILAR"

-- | Query similar samples from the same class of the input sample.
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSSIMILAR :: XPSVisionErrorAnalysisConfig_QueryType
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSSIMILAR = XPSVisionErrorAnalysisConfig_QueryType "QUERY_TYPE_SAME_CLASS_SIMILAR"

-- | Query dissimilar samples from the same class of the input sample.
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSDISSIMILAR :: XPSVisionErrorAnalysisConfig_QueryType
pattern XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSDISSIMILAR = XPSVisionErrorAnalysisConfig_QueryType "QUERY_TYPE_SAME_CLASS_DISSIMILAR"

{-# COMPLETE
  XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEUNSPECIFIED,
  XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPEALLSIMILAR,
  XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSSIMILAR,
  XPSVisionErrorAnalysisConfig_QueryType_QUERYTYPESAMECLASSDISSIMILAR,
  XPSVisionErrorAnalysisConfig_QueryType
  #-}

-- | The color scheme used for the highlighted areas. Defaults to PINK_GREEN for Integrated Gradients attribution, which shows positive attributions in green and negative in pink. Defaults to VIRIDIS for XRAI attribution, which highlights the most influential regions in yellow and the least influential in blue.
newtype XPSVisualization_ColorMap = XPSVisualization_ColorMap {fromXPSVisualization_ColorMap :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Should not be used.
pattern XPSVisualization_ColorMap_COLORMAPUNSPECIFIED :: XPSVisualization_ColorMap
pattern XPSVisualization_ColorMap_COLORMAPUNSPECIFIED = XPSVisualization_ColorMap "COLOR_MAP_UNSPECIFIED"

-- | Positive: green. Negative: pink.
pattern XPSVisualization_ColorMap_PINKGREEN :: XPSVisualization_ColorMap
pattern XPSVisualization_ColorMap_PINKGREEN = XPSVisualization_ColorMap "PINK_GREEN"

-- | Viridis color map: A perceptually uniform color mapping which is easier to see by those with colorblindness and progresses from yellow to green to blue. Positive: yellow. Negative: blue.
pattern XPSVisualization_ColorMap_Viridis :: XPSVisualization_ColorMap
pattern XPSVisualization_ColorMap_Viridis = XPSVisualization_ColorMap "VIRIDIS"

-- | Positive: red. Negative: red.
pattern XPSVisualization_ColorMap_Red :: XPSVisualization_ColorMap
pattern XPSVisualization_ColorMap_Red = XPSVisualization_ColorMap "RED"

-- | Positive: green. Negative: green.
pattern XPSVisualization_ColorMap_Green :: XPSVisualization_ColorMap
pattern XPSVisualization_ColorMap_Green = XPSVisualization_ColorMap "GREEN"

-- | Positive: green. Negative: red.
pattern XPSVisualization_ColorMap_REDGREEN :: XPSVisualization_ColorMap
pattern XPSVisualization_ColorMap_REDGREEN = XPSVisualization_ColorMap "RED_GREEN"

-- | PiYG palette.
pattern XPSVisualization_ColorMap_PINKWHITEGREEN :: XPSVisualization_ColorMap
pattern XPSVisualization_ColorMap_PINKWHITEGREEN = XPSVisualization_ColorMap "PINK_WHITE_GREEN"

{-# COMPLETE
  XPSVisualization_ColorMap_COLORMAPUNSPECIFIED,
  XPSVisualization_ColorMap_PINKGREEN,
  XPSVisualization_ColorMap_Viridis,
  XPSVisualization_ColorMap_Red,
  XPSVisualization_ColorMap_Green,
  XPSVisualization_ColorMap_REDGREEN,
  XPSVisualization_ColorMap_PINKWHITEGREEN,
  XPSVisualization_ColorMap
  #-}

-- | How the original image is displayed in the visualization. Adjusting the overlay can help increase visual clarity if the original image makes it difficult to view the visualization. Defaults to NONE.
newtype XPSVisualization_OverlayType = XPSVisualization_OverlayType {fromXPSVisualization_OverlayType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This is the same as NONE.
pattern XPSVisualization_OverlayType_OVERLAYTYPEUNSPECIFIED :: XPSVisualization_OverlayType
pattern XPSVisualization_OverlayType_OVERLAYTYPEUNSPECIFIED = XPSVisualization_OverlayType "OVERLAY_TYPE_UNSPECIFIED"

-- | No overlay.
pattern XPSVisualization_OverlayType_None :: XPSVisualization_OverlayType
pattern XPSVisualization_OverlayType_None = XPSVisualization_OverlayType "NONE"

-- | The attributions are shown on top of the original image.
pattern XPSVisualization_OverlayType_Original :: XPSVisualization_OverlayType
pattern XPSVisualization_OverlayType_Original = XPSVisualization_OverlayType "ORIGINAL"

-- | The attributions are shown on top of grayscaled version of the original image.
pattern XPSVisualization_OverlayType_Grayscale :: XPSVisualization_OverlayType
pattern XPSVisualization_OverlayType_Grayscale = XPSVisualization_OverlayType "GRAYSCALE"

-- | The attributions are used as a mask to reveal predictive parts of the image and hide the un-predictive parts.
pattern XPSVisualization_OverlayType_MASKBLACK :: XPSVisualization_OverlayType
pattern XPSVisualization_OverlayType_MASKBLACK = XPSVisualization_OverlayType "MASK_BLACK"

{-# COMPLETE
  XPSVisualization_OverlayType_OVERLAYTYPEUNSPECIFIED,
  XPSVisualization_OverlayType_None,
  XPSVisualization_OverlayType_Original,
  XPSVisualization_OverlayType_Grayscale,
  XPSVisualization_OverlayType_MASKBLACK,
  XPSVisualization_OverlayType
  #-}

-- | Whether to only highlight pixels with positive contributions, negative or both. Defaults to POSITIVE.
newtype XPSVisualization_Polarity = XPSVisualization_Polarity {fromXPSVisualization_Polarity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This is the same as POSITIVE.
pattern XPSVisualization_Polarity_POLARITYUNSPECIFIED :: XPSVisualization_Polarity
pattern XPSVisualization_Polarity_POLARITYUNSPECIFIED = XPSVisualization_Polarity "POLARITY_UNSPECIFIED"

-- | Highlights the pixels\/outlines that were most influential to the model\'s prediction.
pattern XPSVisualization_Polarity_Positive :: XPSVisualization_Polarity
pattern XPSVisualization_Polarity_Positive = XPSVisualization_Polarity "POSITIVE"

-- | Setting polarity to negative highlights areas that does not lead to the models\'s current prediction.
pattern XPSVisualization_Polarity_Negative :: XPSVisualization_Polarity
pattern XPSVisualization_Polarity_Negative = XPSVisualization_Polarity "NEGATIVE"

-- | Shows both positive and negative attributions.
pattern XPSVisualization_Polarity_Both :: XPSVisualization_Polarity
pattern XPSVisualization_Polarity_Both = XPSVisualization_Polarity "BOTH"

{-# COMPLETE
  XPSVisualization_Polarity_POLARITYUNSPECIFIED,
  XPSVisualization_Polarity_Positive,
  XPSVisualization_Polarity_Negative,
  XPSVisualization_Polarity_Both,
  XPSVisualization_Polarity
  #-}

-- | Type of the image visualization. Only applicable to Integrated Gradients attribution. OUTLINES shows regions of attribution, while PIXELS shows per-pixel attribution. Defaults to OUTLINES.
newtype XPSVisualization_Type = XPSVisualization_Type {fromXPSVisualization_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Should not be used.
pattern XPSVisualization_Type_TYPEUNSPECIFIED :: XPSVisualization_Type
pattern XPSVisualization_Type_TYPEUNSPECIFIED = XPSVisualization_Type "TYPE_UNSPECIFIED"

-- | Shows which pixel contributed to the image prediction.
pattern XPSVisualization_Type_Pixels :: XPSVisualization_Type
pattern XPSVisualization_Type_Pixels = XPSVisualization_Type "PIXELS"

-- | Shows which region contributed to the image prediction by outlining the region.
pattern XPSVisualization_Type_Outlines :: XPSVisualization_Type
pattern XPSVisualization_Type_Outlines = XPSVisualization_Type "OUTLINES"

{-# COMPLETE
  XPSVisualization_Type_TYPEUNSPECIFIED,
  XPSVisualization_Type_Pixels,
  XPSVisualization_Type_Outlines,
  XPSVisualization_Type
  #-}
