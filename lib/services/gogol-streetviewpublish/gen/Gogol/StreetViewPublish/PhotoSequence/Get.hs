{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StreetViewPublish.PhotoSequence.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of the specified PhotoSequence via the Operation interface. This method returns the following three types of responses: * @Operation.done@ = false, if the processing of PhotoSequence is not finished yet. * @Operation.done@ = true and @Operation.error@ is populated, if there was an error in processing. * @Operation.done@ = true and @Operation.response@ is poulated, which contains a PhotoSequence message. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested PhotoSequence. * google.rpc.Code.NOT/FOUND if the requested PhotoSequence does not exist.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photoSequence.get@.
module Gogol.StreetViewPublish.PhotoSequence.Get
    (
    -- * Resource
      StreetViewPublishPhotoSequenceGetResource

    -- ** Constructing a Request
    , StreetViewPublishPhotoSequenceGet (..)
    , newStreetViewPublishPhotoSequenceGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photoSequence.get@ method which the
-- 'StreetViewPublishPhotoSequenceGet' request conforms to.
type StreetViewPublishPhotoSequenceGetResource =
     "v1" Core.:>
       "photoSequence" Core.:>
         Core.Capture "sequenceId" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "view" PhotoSequenceGetView Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Operation

-- | Gets the metadata of the specified PhotoSequence via the Operation interface. This method returns the following three types of responses: * @Operation.done@ = false, if the processing of PhotoSequence is not finished yet. * @Operation.done@ = true and @Operation.error@ is populated, if there was an error in processing. * @Operation.done@ = true and @Operation.response@ is poulated, which contains a PhotoSequence message. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested PhotoSequence. * google.rpc.Code.NOT/FOUND if the requested PhotoSequence does not exist.
--
-- /See:/ 'newStreetViewPublishPhotoSequenceGet' smart constructor.
data StreetViewPublishPhotoSequenceGet = StreetViewPublishPhotoSequenceGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The filter expression. For example: @published_status=PUBLISHED@. The filters supported are: @published_status@. See https:\/\/google.aip.dev\/160 for more information.
    , filter :: (Core.Maybe Core.Text)
      -- | Required. ID of the photo sequence.
    , sequenceId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Specifies if a download URL for the photo sequence should be returned in @download_url@ of individual photos in the PhotoSequence response. > Note: Currently not implemented.
    , view :: (Core.Maybe PhotoSequenceGetView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoSequenceGet' with the minimum fields required to make a request.
newStreetViewPublishPhotoSequenceGet 
    ::  Core.Text
       -- ^  Required. ID of the photo sequence. See 'sequenceId'.
    -> StreetViewPublishPhotoSequenceGet
newStreetViewPublishPhotoSequenceGet sequenceId =
  StreetViewPublishPhotoSequenceGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , sequenceId = sequenceId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest
           StreetViewPublishPhotoSequenceGet
         where
        type Rs StreetViewPublishPhotoSequenceGet = Operation
        type Scopes StreetViewPublishPhotoSequenceGet =
             '[Streetviewpublish'FullControl]
        requestClient StreetViewPublishPhotoSequenceGet{..}
          = go sequenceId xgafv accessToken callback filter
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              streetViewPublishService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StreetViewPublishPhotoSequenceGetResource)
                      Core.mempty

