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
-- Module      : Network.Google.Resource.Logging.Folders.Exclusions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.exclusions.delete@.
module Network.Google.Resource.Logging.Folders.Exclusions.Delete
    (
    -- * REST Resource
      FoldersExclusionsDeleteResource

    -- * Creating a Request
    , foldersExclusionsDelete
    , FoldersExclusionsDelete

    -- * Request Lenses
    , fedXgafv
    , fedUploadProtocol
    , fedAccessToken
    , fedUploadType
    , fedName
    , fedCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.exclusions.delete@ method which the
-- 'FoldersExclusionsDelete' request conforms to.
type FoldersExclusionsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an exclusion.
--
-- /See:/ 'foldersExclusionsDelete' smart constructor.
data FoldersExclusionsDelete = FoldersExclusionsDelete'
    { _fedXgafv          :: !(Maybe Xgafv)
    , _fedUploadProtocol :: !(Maybe Text)
    , _fedAccessToken    :: !(Maybe Text)
    , _fedUploadType     :: !(Maybe Text)
    , _fedName           :: !Text
    , _fedCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FoldersExclusionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fedXgafv'
--
-- * 'fedUploadProtocol'
--
-- * 'fedAccessToken'
--
-- * 'fedUploadType'
--
-- * 'fedName'
--
-- * 'fedCallback'
foldersExclusionsDelete
    :: Text -- ^ 'fedName'
    -> FoldersExclusionsDelete
foldersExclusionsDelete pFedName_ =
    FoldersExclusionsDelete'
    { _fedXgafv = Nothing
    , _fedUploadProtocol = Nothing
    , _fedAccessToken = Nothing
    , _fedUploadType = Nothing
    , _fedName = pFedName_
    , _fedCallback = Nothing
    }

-- | V1 error format.
fedXgafv :: Lens' FoldersExclusionsDelete (Maybe Xgafv)
fedXgafv = lens _fedXgafv (\ s a -> s{_fedXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fedUploadProtocol :: Lens' FoldersExclusionsDelete (Maybe Text)
fedUploadProtocol
  = lens _fedUploadProtocol
      (\ s a -> s{_fedUploadProtocol = a})

-- | OAuth access token.
fedAccessToken :: Lens' FoldersExclusionsDelete (Maybe Text)
fedAccessToken
  = lens _fedAccessToken
      (\ s a -> s{_fedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fedUploadType :: Lens' FoldersExclusionsDelete (Maybe Text)
fedUploadType
  = lens _fedUploadType
      (\ s a -> s{_fedUploadType = a})

-- | Required. The resource name of an existing exclusion to delete:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
fedName :: Lens' FoldersExclusionsDelete Text
fedName = lens _fedName (\ s a -> s{_fedName = a})

-- | JSONP
fedCallback :: Lens' FoldersExclusionsDelete (Maybe Text)
fedCallback
  = lens _fedCallback (\ s a -> s{_fedCallback = a})

instance GoogleRequest FoldersExclusionsDelete where
        type Rs FoldersExclusionsDelete = Empty
        type Scopes FoldersExclusionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersExclusionsDelete'{..}
          = go _fedName _fedXgafv _fedUploadProtocol
              _fedAccessToken
              _fedUploadType
              _fedCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersExclusionsDeleteResource)
                      mempty
