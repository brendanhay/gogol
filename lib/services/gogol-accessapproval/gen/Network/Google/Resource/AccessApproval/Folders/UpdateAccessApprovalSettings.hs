{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AccessApproval.Folders.UpdateAccessApprovalSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings associated with a project, folder, or organization.
-- Settings to update are determined by the value of field_mask.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.folders.updateAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Folders.UpdateAccessApprovalSettings
    (
    -- * REST Resource
      FoldersUpdateAccessApprovalSettingsResource

    -- * Creating a Request
    , foldersUpdateAccessApprovalSettings
    , FoldersUpdateAccessApprovalSettings

    -- * Request Lenses
    , fuaasXgafv
    , fuaasUploadProtocol
    , fuaasUpdateMask
    , fuaasAccessToken
    , fuaasUploadType
    , fuaasPayload
    , fuaasName
    , fuaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.folders.updateAccessApprovalSettings@ method which the
-- 'FoldersUpdateAccessApprovalSettings' request conforms to.
type FoldersUpdateAccessApprovalSettingsResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AccessApprovalSettings :>
                         Patch '[JSON] AccessApprovalSettings

-- | Updates the settings associated with a project, folder, or organization.
-- Settings to update are determined by the value of field_mask.
--
-- /See:/ 'foldersUpdateAccessApprovalSettings' smart constructor.
data FoldersUpdateAccessApprovalSettings =
  FoldersUpdateAccessApprovalSettings'
    { _fuaasXgafv :: !(Maybe Xgafv)
    , _fuaasUploadProtocol :: !(Maybe Text)
    , _fuaasUpdateMask :: !(Maybe GFieldMask)
    , _fuaasAccessToken :: !(Maybe Text)
    , _fuaasUploadType :: !(Maybe Text)
    , _fuaasPayload :: !AccessApprovalSettings
    , _fuaasName :: !Text
    , _fuaasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersUpdateAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuaasXgafv'
--
-- * 'fuaasUploadProtocol'
--
-- * 'fuaasUpdateMask'
--
-- * 'fuaasAccessToken'
--
-- * 'fuaasUploadType'
--
-- * 'fuaasPayload'
--
-- * 'fuaasName'
--
-- * 'fuaasCallback'
foldersUpdateAccessApprovalSettings
    :: AccessApprovalSettings -- ^ 'fuaasPayload'
    -> Text -- ^ 'fuaasName'
    -> FoldersUpdateAccessApprovalSettings
foldersUpdateAccessApprovalSettings pFuaasPayload_ pFuaasName_ =
  FoldersUpdateAccessApprovalSettings'
    { _fuaasXgafv = Nothing
    , _fuaasUploadProtocol = Nothing
    , _fuaasUpdateMask = Nothing
    , _fuaasAccessToken = Nothing
    , _fuaasUploadType = Nothing
    , _fuaasPayload = pFuaasPayload_
    , _fuaasName = pFuaasName_
    , _fuaasCallback = Nothing
    }


-- | V1 error format.
fuaasXgafv :: Lens' FoldersUpdateAccessApprovalSettings (Maybe Xgafv)
fuaasXgafv
  = lens _fuaasXgafv (\ s a -> s{_fuaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fuaasUploadProtocol :: Lens' FoldersUpdateAccessApprovalSettings (Maybe Text)
fuaasUploadProtocol
  = lens _fuaasUploadProtocol
      (\ s a -> s{_fuaasUploadProtocol = a})

-- | The update mask applies to the settings. Only the top level fields of
-- AccessApprovalSettings (notification_emails & enrolled_services) are
-- supported. For each field, if it is included, the currently stored value
-- will be entirely overwritten with the value of the field passed in this
-- request. For the \`FieldMask\` definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
-- If this field is left unset, only the notification_emails field will be
-- updated.
fuaasUpdateMask :: Lens' FoldersUpdateAccessApprovalSettings (Maybe GFieldMask)
fuaasUpdateMask
  = lens _fuaasUpdateMask
      (\ s a -> s{_fuaasUpdateMask = a})

-- | OAuth access token.
fuaasAccessToken :: Lens' FoldersUpdateAccessApprovalSettings (Maybe Text)
fuaasAccessToken
  = lens _fuaasAccessToken
      (\ s a -> s{_fuaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fuaasUploadType :: Lens' FoldersUpdateAccessApprovalSettings (Maybe Text)
fuaasUploadType
  = lens _fuaasUploadType
      (\ s a -> s{_fuaasUploadType = a})

-- | Multipart request metadata.
fuaasPayload :: Lens' FoldersUpdateAccessApprovalSettings AccessApprovalSettings
fuaasPayload
  = lens _fuaasPayload (\ s a -> s{_fuaasPayload = a})

-- | The resource name of the settings. Format is one of: *
-- \"projects\/{project}\/accessApprovalSettings\" *
-- \"folders\/{folder}\/accessApprovalSettings\" *
-- \"organizations\/{organization}\/accessApprovalSettings\"
fuaasName :: Lens' FoldersUpdateAccessApprovalSettings Text
fuaasName
  = lens _fuaasName (\ s a -> s{_fuaasName = a})

-- | JSONP
fuaasCallback :: Lens' FoldersUpdateAccessApprovalSettings (Maybe Text)
fuaasCallback
  = lens _fuaasCallback
      (\ s a -> s{_fuaasCallback = a})

instance GoogleRequest
           FoldersUpdateAccessApprovalSettings
         where
        type Rs FoldersUpdateAccessApprovalSettings =
             AccessApprovalSettings
        type Scopes FoldersUpdateAccessApprovalSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          FoldersUpdateAccessApprovalSettings'{..}
          = go _fuaasName _fuaasXgafv _fuaasUploadProtocol
              _fuaasUpdateMask
              _fuaasAccessToken
              _fuaasUploadType
              _fuaasCallback
              (Just AltJSON)
              _fuaasPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersUpdateAccessApprovalSettingsResource)
                      mempty
