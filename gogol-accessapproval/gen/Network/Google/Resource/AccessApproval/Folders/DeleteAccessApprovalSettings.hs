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
-- Module      : Network.Google.Resource.AccessApproval.Folders.DeleteAccessApprovalSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the settings associated with a project, folder, or organization.
-- This will have the effect of disabling Access Approval for the project,
-- folder, or organization, but only if all ancestors also have Access
-- Approval disabled. If Access Approval is enabled at a higher level of
-- the hierarchy, then Access Approval will still be enabled at this level
-- as the settings are inherited.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.folders.deleteAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Folders.DeleteAccessApprovalSettings
    (
    -- * REST Resource
      FoldersDeleteAccessApprovalSettingsResource

    -- * Creating a Request
    , foldersDeleteAccessApprovalSettings
    , FoldersDeleteAccessApprovalSettings

    -- * Request Lenses
    , fdaasXgafv
    , fdaasUploadProtocol
    , fdaasAccessToken
    , fdaasUploadType
    , fdaasName
    , fdaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.folders.deleteAccessApprovalSettings@ method which the
-- 'FoldersDeleteAccessApprovalSettings' request conforms to.
type FoldersDeleteAccessApprovalSettingsResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the settings associated with a project, folder, or organization.
-- This will have the effect of disabling Access Approval for the project,
-- folder, or organization, but only if all ancestors also have Access
-- Approval disabled. If Access Approval is enabled at a higher level of
-- the hierarchy, then Access Approval will still be enabled at this level
-- as the settings are inherited.
--
-- /See:/ 'foldersDeleteAccessApprovalSettings' smart constructor.
data FoldersDeleteAccessApprovalSettings =
  FoldersDeleteAccessApprovalSettings'
    { _fdaasXgafv :: !(Maybe Xgafv)
    , _fdaasUploadProtocol :: !(Maybe Text)
    , _fdaasAccessToken :: !(Maybe Text)
    , _fdaasUploadType :: !(Maybe Text)
    , _fdaasName :: !Text
    , _fdaasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersDeleteAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdaasXgafv'
--
-- * 'fdaasUploadProtocol'
--
-- * 'fdaasAccessToken'
--
-- * 'fdaasUploadType'
--
-- * 'fdaasName'
--
-- * 'fdaasCallback'
foldersDeleteAccessApprovalSettings
    :: Text -- ^ 'fdaasName'
    -> FoldersDeleteAccessApprovalSettings
foldersDeleteAccessApprovalSettings pFdaasName_ =
  FoldersDeleteAccessApprovalSettings'
    { _fdaasXgafv = Nothing
    , _fdaasUploadProtocol = Nothing
    , _fdaasAccessToken = Nothing
    , _fdaasUploadType = Nothing
    , _fdaasName = pFdaasName_
    , _fdaasCallback = Nothing
    }


-- | V1 error format.
fdaasXgafv :: Lens' FoldersDeleteAccessApprovalSettings (Maybe Xgafv)
fdaasXgafv
  = lens _fdaasXgafv (\ s a -> s{_fdaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fdaasUploadProtocol :: Lens' FoldersDeleteAccessApprovalSettings (Maybe Text)
fdaasUploadProtocol
  = lens _fdaasUploadProtocol
      (\ s a -> s{_fdaasUploadProtocol = a})

-- | OAuth access token.
fdaasAccessToken :: Lens' FoldersDeleteAccessApprovalSettings (Maybe Text)
fdaasAccessToken
  = lens _fdaasAccessToken
      (\ s a -> s{_fdaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fdaasUploadType :: Lens' FoldersDeleteAccessApprovalSettings (Maybe Text)
fdaasUploadType
  = lens _fdaasUploadType
      (\ s a -> s{_fdaasUploadType = a})

-- | Name of the AccessApprovalSettings to delete.
fdaasName :: Lens' FoldersDeleteAccessApprovalSettings Text
fdaasName
  = lens _fdaasName (\ s a -> s{_fdaasName = a})

-- | JSONP
fdaasCallback :: Lens' FoldersDeleteAccessApprovalSettings (Maybe Text)
fdaasCallback
  = lens _fdaasCallback
      (\ s a -> s{_fdaasCallback = a})

instance GoogleRequest
           FoldersDeleteAccessApprovalSettings
         where
        type Rs FoldersDeleteAccessApprovalSettings = Empty
        type Scopes FoldersDeleteAccessApprovalSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          FoldersDeleteAccessApprovalSettings'{..}
          = go _fdaasName _fdaasXgafv _fdaasUploadProtocol
              _fdaasAccessToken
              _fdaasUploadType
              _fdaasCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersDeleteAccessApprovalSettingsResource)
                      mempty
