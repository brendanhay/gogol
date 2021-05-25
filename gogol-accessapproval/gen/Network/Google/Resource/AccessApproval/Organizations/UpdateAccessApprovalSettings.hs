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
-- Module      : Network.Google.Resource.AccessApproval.Organizations.UpdateAccessApprovalSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings associated with a project, folder, or organization.
-- Settings to update are determined by the value of field_mask.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.updateAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Organizations.UpdateAccessApprovalSettings
    (
    -- * REST Resource
      OrganizationsUpdateAccessApprovalSettingsResource

    -- * Creating a Request
    , organizationsUpdateAccessApprovalSettings
    , OrganizationsUpdateAccessApprovalSettings

    -- * Request Lenses
    , ouaasXgafv
    , ouaasUploadProtocol
    , ouaasUpdateMask
    , ouaasAccessToken
    , ouaasUploadType
    , ouaasPayload
    , ouaasName
    , ouaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.organizations.updateAccessApprovalSettings@ method which the
-- 'OrganizationsUpdateAccessApprovalSettings' request conforms to.
type OrganizationsUpdateAccessApprovalSettingsResource
     =
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
-- /See:/ 'organizationsUpdateAccessApprovalSettings' smart constructor.
data OrganizationsUpdateAccessApprovalSettings =
  OrganizationsUpdateAccessApprovalSettings'
    { _ouaasXgafv :: !(Maybe Xgafv)
    , _ouaasUploadProtocol :: !(Maybe Text)
    , _ouaasUpdateMask :: !(Maybe GFieldMask)
    , _ouaasAccessToken :: !(Maybe Text)
    , _ouaasUploadType :: !(Maybe Text)
    , _ouaasPayload :: !AccessApprovalSettings
    , _ouaasName :: !Text
    , _ouaasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsUpdateAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouaasXgafv'
--
-- * 'ouaasUploadProtocol'
--
-- * 'ouaasUpdateMask'
--
-- * 'ouaasAccessToken'
--
-- * 'ouaasUploadType'
--
-- * 'ouaasPayload'
--
-- * 'ouaasName'
--
-- * 'ouaasCallback'
organizationsUpdateAccessApprovalSettings
    :: AccessApprovalSettings -- ^ 'ouaasPayload'
    -> Text -- ^ 'ouaasName'
    -> OrganizationsUpdateAccessApprovalSettings
organizationsUpdateAccessApprovalSettings pOuaasPayload_ pOuaasName_ =
  OrganizationsUpdateAccessApprovalSettings'
    { _ouaasXgafv = Nothing
    , _ouaasUploadProtocol = Nothing
    , _ouaasUpdateMask = Nothing
    , _ouaasAccessToken = Nothing
    , _ouaasUploadType = Nothing
    , _ouaasPayload = pOuaasPayload_
    , _ouaasName = pOuaasName_
    , _ouaasCallback = Nothing
    }


-- | V1 error format.
ouaasXgafv :: Lens' OrganizationsUpdateAccessApprovalSettings (Maybe Xgafv)
ouaasXgafv
  = lens _ouaasXgafv (\ s a -> s{_ouaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouaasUploadProtocol :: Lens' OrganizationsUpdateAccessApprovalSettings (Maybe Text)
ouaasUploadProtocol
  = lens _ouaasUploadProtocol
      (\ s a -> s{_ouaasUploadProtocol = a})

-- | The update mask applies to the settings. Only the top level fields of
-- AccessApprovalSettings (notification_emails & enrolled_services) are
-- supported. For each field, if it is included, the currently stored value
-- will be entirely overwritten with the value of the field passed in this
-- request. For the \`FieldMask\` definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
-- If this field is left unset, only the notification_emails field will be
-- updated.
ouaasUpdateMask :: Lens' OrganizationsUpdateAccessApprovalSettings (Maybe GFieldMask)
ouaasUpdateMask
  = lens _ouaasUpdateMask
      (\ s a -> s{_ouaasUpdateMask = a})

-- | OAuth access token.
ouaasAccessToken :: Lens' OrganizationsUpdateAccessApprovalSettings (Maybe Text)
ouaasAccessToken
  = lens _ouaasAccessToken
      (\ s a -> s{_ouaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouaasUploadType :: Lens' OrganizationsUpdateAccessApprovalSettings (Maybe Text)
ouaasUploadType
  = lens _ouaasUploadType
      (\ s a -> s{_ouaasUploadType = a})

-- | Multipart request metadata.
ouaasPayload :: Lens' OrganizationsUpdateAccessApprovalSettings AccessApprovalSettings
ouaasPayload
  = lens _ouaasPayload (\ s a -> s{_ouaasPayload = a})

-- | The resource name of the settings. Format is one of: *
-- \"projects\/{project}\/accessApprovalSettings\" *
-- \"folders\/{folder}\/accessApprovalSettings\" *
-- \"organizations\/{organization}\/accessApprovalSettings\"
ouaasName :: Lens' OrganizationsUpdateAccessApprovalSettings Text
ouaasName
  = lens _ouaasName (\ s a -> s{_ouaasName = a})

-- | JSONP
ouaasCallback :: Lens' OrganizationsUpdateAccessApprovalSettings (Maybe Text)
ouaasCallback
  = lens _ouaasCallback
      (\ s a -> s{_ouaasCallback = a})

instance GoogleRequest
           OrganizationsUpdateAccessApprovalSettings
         where
        type Rs OrganizationsUpdateAccessApprovalSettings =
             AccessApprovalSettings
        type Scopes OrganizationsUpdateAccessApprovalSettings
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsUpdateAccessApprovalSettings'{..}
          = go _ouaasName _ouaasXgafv _ouaasUploadProtocol
              _ouaasUpdateMask
              _ouaasAccessToken
              _ouaasUploadType
              _ouaasCallback
              (Just AltJSON)
              _ouaasPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsUpdateAccessApprovalSettingsResource)
                      mempty
