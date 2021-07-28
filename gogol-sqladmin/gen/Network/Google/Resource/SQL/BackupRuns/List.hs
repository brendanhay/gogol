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
-- Module      : Network.Google.Resource.SQL.BackupRuns.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all backup runs associated with the project or a given instance
-- and configuration in the reverse chronological order of the backup
-- initiation time.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.backupRuns.list@.
module Network.Google.Resource.SQL.BackupRuns.List
    (
    -- * REST Resource
      BackupRunsListResource

    -- * Creating a Request
    , backupRunsList
    , BackupRunsList

    -- * Request Lenses
    , brlXgafv
    , brlUploadProtocol
    , brlProject
    , brlAccessToken
    , brlUploadType
    , brlPageToken
    , brlMaxResults
    , brlCallback
    , brlInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.list@ method which the
-- 'BackupRunsList' request conforms to.
type BackupRunsListResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "backupRuns" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] BackupRunsListResponse

-- | Lists all backup runs associated with the project or a given instance
-- and configuration in the reverse chronological order of the backup
-- initiation time.
--
-- /See:/ 'backupRunsList' smart constructor.
data BackupRunsList =
  BackupRunsList'
    { _brlXgafv :: !(Maybe Xgafv)
    , _brlUploadProtocol :: !(Maybe Text)
    , _brlProject :: !Text
    , _brlAccessToken :: !(Maybe Text)
    , _brlUploadType :: !(Maybe Text)
    , _brlPageToken :: !(Maybe Text)
    , _brlMaxResults :: !(Maybe (Textual Int32))
    , _brlCallback :: !(Maybe Text)
    , _brlInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupRunsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brlXgafv'
--
-- * 'brlUploadProtocol'
--
-- * 'brlProject'
--
-- * 'brlAccessToken'
--
-- * 'brlUploadType'
--
-- * 'brlPageToken'
--
-- * 'brlMaxResults'
--
-- * 'brlCallback'
--
-- * 'brlInstance'
backupRunsList
    :: Text -- ^ 'brlProject'
    -> Text -- ^ 'brlInstance'
    -> BackupRunsList
backupRunsList pBrlProject_ pBrlInstance_ =
  BackupRunsList'
    { _brlXgafv = Nothing
    , _brlUploadProtocol = Nothing
    , _brlProject = pBrlProject_
    , _brlAccessToken = Nothing
    , _brlUploadType = Nothing
    , _brlPageToken = Nothing
    , _brlMaxResults = Nothing
    , _brlCallback = Nothing
    , _brlInstance = pBrlInstance_
    }


-- | V1 error format.
brlXgafv :: Lens' BackupRunsList (Maybe Xgafv)
brlXgafv = lens _brlXgafv (\ s a -> s{_brlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
brlUploadProtocol :: Lens' BackupRunsList (Maybe Text)
brlUploadProtocol
  = lens _brlUploadProtocol
      (\ s a -> s{_brlUploadProtocol = a})

-- | Project ID of the project that contains the instance.
brlProject :: Lens' BackupRunsList Text
brlProject
  = lens _brlProject (\ s a -> s{_brlProject = a})

-- | OAuth access token.
brlAccessToken :: Lens' BackupRunsList (Maybe Text)
brlAccessToken
  = lens _brlAccessToken
      (\ s a -> s{_brlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
brlUploadType :: Lens' BackupRunsList (Maybe Text)
brlUploadType
  = lens _brlUploadType
      (\ s a -> s{_brlUploadType = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
brlPageToken :: Lens' BackupRunsList (Maybe Text)
brlPageToken
  = lens _brlPageToken (\ s a -> s{_brlPageToken = a})

-- | Maximum number of backup runs per response.
brlMaxResults :: Lens' BackupRunsList (Maybe Int32)
brlMaxResults
  = lens _brlMaxResults
      (\ s a -> s{_brlMaxResults = a})
      . mapping _Coerce

-- | JSONP
brlCallback :: Lens' BackupRunsList (Maybe Text)
brlCallback
  = lens _brlCallback (\ s a -> s{_brlCallback = a})

-- | Cloud SQL instance ID, or \"-\" for all instances. This does not include
-- the project ID.
brlInstance :: Lens' BackupRunsList Text
brlInstance
  = lens _brlInstance (\ s a -> s{_brlInstance = a})

instance GoogleRequest BackupRunsList where
        type Rs BackupRunsList = BackupRunsListResponse
        type Scopes BackupRunsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient BackupRunsList'{..}
          = go _brlProject _brlInstance _brlXgafv
              _brlUploadProtocol
              _brlAccessToken
              _brlUploadType
              _brlPageToken
              _brlMaxResults
              _brlCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy BackupRunsListResource)
                      mempty
