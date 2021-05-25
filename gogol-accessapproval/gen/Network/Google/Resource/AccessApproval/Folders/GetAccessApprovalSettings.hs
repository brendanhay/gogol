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
-- Module      : Network.Google.Resource.AccessApproval.Folders.GetAccessApprovalSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings associated with a project, folder, or organization.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.folders.getAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Folders.GetAccessApprovalSettings
    (
    -- * REST Resource
      FoldersGetAccessApprovalSettingsResource

    -- * Creating a Request
    , foldersGetAccessApprovalSettings
    , FoldersGetAccessApprovalSettings

    -- * Request Lenses
    , fgaasXgafv
    , fgaasUploadProtocol
    , fgaasAccessToken
    , fgaasUploadType
    , fgaasName
    , fgaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.folders.getAccessApprovalSettings@ method which the
-- 'FoldersGetAccessApprovalSettings' request conforms to.
type FoldersGetAccessApprovalSettingsResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AccessApprovalSettings

-- | Gets the settings associated with a project, folder, or organization.
--
-- /See:/ 'foldersGetAccessApprovalSettings' smart constructor.
data FoldersGetAccessApprovalSettings =
  FoldersGetAccessApprovalSettings'
    { _fgaasXgafv :: !(Maybe Xgafv)
    , _fgaasUploadProtocol :: !(Maybe Text)
    , _fgaasAccessToken :: !(Maybe Text)
    , _fgaasUploadType :: !(Maybe Text)
    , _fgaasName :: !Text
    , _fgaasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersGetAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgaasXgafv'
--
-- * 'fgaasUploadProtocol'
--
-- * 'fgaasAccessToken'
--
-- * 'fgaasUploadType'
--
-- * 'fgaasName'
--
-- * 'fgaasCallback'
foldersGetAccessApprovalSettings
    :: Text -- ^ 'fgaasName'
    -> FoldersGetAccessApprovalSettings
foldersGetAccessApprovalSettings pFgaasName_ =
  FoldersGetAccessApprovalSettings'
    { _fgaasXgafv = Nothing
    , _fgaasUploadProtocol = Nothing
    , _fgaasAccessToken = Nothing
    , _fgaasUploadType = Nothing
    , _fgaasName = pFgaasName_
    , _fgaasCallback = Nothing
    }


-- | V1 error format.
fgaasXgafv :: Lens' FoldersGetAccessApprovalSettings (Maybe Xgafv)
fgaasXgafv
  = lens _fgaasXgafv (\ s a -> s{_fgaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fgaasUploadProtocol :: Lens' FoldersGetAccessApprovalSettings (Maybe Text)
fgaasUploadProtocol
  = lens _fgaasUploadProtocol
      (\ s a -> s{_fgaasUploadProtocol = a})

-- | OAuth access token.
fgaasAccessToken :: Lens' FoldersGetAccessApprovalSettings (Maybe Text)
fgaasAccessToken
  = lens _fgaasAccessToken
      (\ s a -> s{_fgaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fgaasUploadType :: Lens' FoldersGetAccessApprovalSettings (Maybe Text)
fgaasUploadType
  = lens _fgaasUploadType
      (\ s a -> s{_fgaasUploadType = a})

-- | Name of the AccessApprovalSettings to retrieve.
fgaasName :: Lens' FoldersGetAccessApprovalSettings Text
fgaasName
  = lens _fgaasName (\ s a -> s{_fgaasName = a})

-- | JSONP
fgaasCallback :: Lens' FoldersGetAccessApprovalSettings (Maybe Text)
fgaasCallback
  = lens _fgaasCallback
      (\ s a -> s{_fgaasCallback = a})

instance GoogleRequest
           FoldersGetAccessApprovalSettings
         where
        type Rs FoldersGetAccessApprovalSettings =
             AccessApprovalSettings
        type Scopes FoldersGetAccessApprovalSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersGetAccessApprovalSettings'{..}
          = go _fgaasName _fgaasXgafv _fgaasUploadProtocol
              _fgaasAccessToken
              _fgaasUploadType
              _fgaasCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersGetAccessApprovalSettingsResource)
                      mempty
