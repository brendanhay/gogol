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
-- Module      : Network.Google.Resource.Logging.Folders.Exclusions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the description of an exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.exclusions.get@.
module Network.Google.Resource.Logging.Folders.Exclusions.Get
    (
    -- * REST Resource
      FoldersExclusionsGetResource

    -- * Creating a Request
    , foldersExclusionsGet
    , FoldersExclusionsGet

    -- * Request Lenses
    , fegXgafv
    , fegUploadProtocol
    , fegAccessToken
    , fegUploadType
    , fegName
    , fegCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.exclusions.get@ method which the
-- 'FoldersExclusionsGet' request conforms to.
type FoldersExclusionsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogExclusion

-- | Gets the description of an exclusion.
--
-- /See:/ 'foldersExclusionsGet' smart constructor.
data FoldersExclusionsGet =
  FoldersExclusionsGet'
    { _fegXgafv :: !(Maybe Xgafv)
    , _fegUploadProtocol :: !(Maybe Text)
    , _fegAccessToken :: !(Maybe Text)
    , _fegUploadType :: !(Maybe Text)
    , _fegName :: !Text
    , _fegCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersExclusionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fegXgafv'
--
-- * 'fegUploadProtocol'
--
-- * 'fegAccessToken'
--
-- * 'fegUploadType'
--
-- * 'fegName'
--
-- * 'fegCallback'
foldersExclusionsGet
    :: Text -- ^ 'fegName'
    -> FoldersExclusionsGet
foldersExclusionsGet pFegName_ =
  FoldersExclusionsGet'
    { _fegXgafv = Nothing
    , _fegUploadProtocol = Nothing
    , _fegAccessToken = Nothing
    , _fegUploadType = Nothing
    , _fegName = pFegName_
    , _fegCallback = Nothing
    }


-- | V1 error format.
fegXgafv :: Lens' FoldersExclusionsGet (Maybe Xgafv)
fegXgafv = lens _fegXgafv (\ s a -> s{_fegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fegUploadProtocol :: Lens' FoldersExclusionsGet (Maybe Text)
fegUploadProtocol
  = lens _fegUploadProtocol
      (\ s a -> s{_fegUploadProtocol = a})

-- | OAuth access token.
fegAccessToken :: Lens' FoldersExclusionsGet (Maybe Text)
fegAccessToken
  = lens _fegAccessToken
      (\ s a -> s{_fegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fegUploadType :: Lens' FoldersExclusionsGet (Maybe Text)
fegUploadType
  = lens _fegUploadType
      (\ s a -> s{_fegUploadType = a})

-- | Required. The resource name of an existing exclusion:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
fegName :: Lens' FoldersExclusionsGet Text
fegName = lens _fegName (\ s a -> s{_fegName = a})

-- | JSONP
fegCallback :: Lens' FoldersExclusionsGet (Maybe Text)
fegCallback
  = lens _fegCallback (\ s a -> s{_fegCallback = a})

instance GoogleRequest FoldersExclusionsGet where
        type Rs FoldersExclusionsGet = LogExclusion
        type Scopes FoldersExclusionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersExclusionsGet'{..}
          = go _fegName _fegXgafv _fegUploadProtocol
              _fegAccessToken
              _fegUploadType
              _fegCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersExclusionsGetResource)
                      mempty
