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
-- Module      : Network.Google.Resource.Logging.Folders.Exclusions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new exclusion in a specified parent resource. Only log entries
-- belonging to that resource can be excluded. You can have up to 10
-- exclusions in a resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.exclusions.create@.
module Network.Google.Resource.Logging.Folders.Exclusions.Create
    (
    -- * REST Resource
      FoldersExclusionsCreateResource

    -- * Creating a Request
    , foldersExclusionsCreate
    , FoldersExclusionsCreate

    -- * Request Lenses
    , fecParent
    , fecXgafv
    , fecUploadProtocol
    , fecAccessToken
    , fecUploadType
    , fecPayload
    , fecCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.exclusions.create@ method which the
-- 'FoldersExclusionsCreate' request conforms to.
type FoldersExclusionsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "exclusions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LogExclusion :>
                         Post '[JSON] LogExclusion

-- | Creates a new exclusion in a specified parent resource. Only log entries
-- belonging to that resource can be excluded. You can have up to 10
-- exclusions in a resource.
--
-- /See:/ 'foldersExclusionsCreate' smart constructor.
data FoldersExclusionsCreate =
  FoldersExclusionsCreate'
    { _fecParent         :: !Text
    , _fecXgafv          :: !(Maybe Xgafv)
    , _fecUploadProtocol :: !(Maybe Text)
    , _fecAccessToken    :: !(Maybe Text)
    , _fecUploadType     :: !(Maybe Text)
    , _fecPayload        :: !LogExclusion
    , _fecCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FoldersExclusionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fecParent'
--
-- * 'fecXgafv'
--
-- * 'fecUploadProtocol'
--
-- * 'fecAccessToken'
--
-- * 'fecUploadType'
--
-- * 'fecPayload'
--
-- * 'fecCallback'
foldersExclusionsCreate
    :: Text -- ^ 'fecParent'
    -> LogExclusion -- ^ 'fecPayload'
    -> FoldersExclusionsCreate
foldersExclusionsCreate pFecParent_ pFecPayload_ =
  FoldersExclusionsCreate'
    { _fecParent = pFecParent_
    , _fecXgafv = Nothing
    , _fecUploadProtocol = Nothing
    , _fecAccessToken = Nothing
    , _fecUploadType = Nothing
    , _fecPayload = pFecPayload_
    , _fecCallback = Nothing
    }

-- | Required. The parent resource in which to create the exclusion:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
-- Examples: \"projects\/my-logging-project\",
-- \"organizations\/123456789\".
fecParent :: Lens' FoldersExclusionsCreate Text
fecParent
  = lens _fecParent (\ s a -> s{_fecParent = a})

-- | V1 error format.
fecXgafv :: Lens' FoldersExclusionsCreate (Maybe Xgafv)
fecXgafv = lens _fecXgafv (\ s a -> s{_fecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fecUploadProtocol :: Lens' FoldersExclusionsCreate (Maybe Text)
fecUploadProtocol
  = lens _fecUploadProtocol
      (\ s a -> s{_fecUploadProtocol = a})

-- | OAuth access token.
fecAccessToken :: Lens' FoldersExclusionsCreate (Maybe Text)
fecAccessToken
  = lens _fecAccessToken
      (\ s a -> s{_fecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fecUploadType :: Lens' FoldersExclusionsCreate (Maybe Text)
fecUploadType
  = lens _fecUploadType
      (\ s a -> s{_fecUploadType = a})

-- | Multipart request metadata.
fecPayload :: Lens' FoldersExclusionsCreate LogExclusion
fecPayload
  = lens _fecPayload (\ s a -> s{_fecPayload = a})

-- | JSONP
fecCallback :: Lens' FoldersExclusionsCreate (Maybe Text)
fecCallback
  = lens _fecCallback (\ s a -> s{_fecCallback = a})

instance GoogleRequest FoldersExclusionsCreate where
        type Rs FoldersExclusionsCreate = LogExclusion
        type Scopes FoldersExclusionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersExclusionsCreate'{..}
          = go _fecParent _fecXgafv _fecUploadProtocol
              _fecAccessToken
              _fecUploadType
              _fecCallback
              (Just AltJSON)
              _fecPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersExclusionsCreateResource)
                      mempty
