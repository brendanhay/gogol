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
-- Lists all backup runs associated with a given instance and configuration
-- in the reverse chronological order of the enqueued time.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.backupRuns.list@.
module Network.Google.Resource.SQL.BackupRuns.List
    (
    -- * REST Resource
      BackupRunsListResource

    -- * Creating a Request
    , backupRunsList
    , BackupRunsList

    -- * Request Lenses
    , brlProject
    , brlPageToken
    , brlMaxResults
    , brlInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.list@ method which the
-- 'BackupRunsList' request conforms to.
type BackupRunsListResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "backupRuns" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BackupRunsListResponse

-- | Lists all backup runs associated with a given instance and configuration
-- in the reverse chronological order of the enqueued time.
--
-- /See:/ 'backupRunsList' smart constructor.
data BackupRunsList = BackupRunsList
    { _brlProject    :: !Text
    , _brlPageToken  :: !(Maybe Text)
    , _brlMaxResults :: !(Maybe (Textual Int32))
    , _brlInstance   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brlProject'
--
-- * 'brlPageToken'
--
-- * 'brlMaxResults'
--
-- * 'brlInstance'
backupRunsList
    :: Text -- ^ 'brlProject'
    -> Text -- ^ 'brlInstance'
    -> BackupRunsList
backupRunsList pBrlProject_ pBrlInstance_ =
    BackupRunsList
    { _brlProject = pBrlProject_
    , _brlPageToken = Nothing
    , _brlMaxResults = Nothing
    , _brlInstance = pBrlInstance_
    }

-- | Project ID of the project that contains the instance.
brlProject :: Lens' BackupRunsList Text
brlProject
  = lens _brlProject (\ s a -> s{_brlProject = a})

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

-- | Cloud SQL instance ID. This does not include the project ID.
brlInstance :: Lens' BackupRunsList Text
brlInstance
  = lens _brlInstance (\ s a -> s{_brlInstance = a})

instance GoogleRequest BackupRunsList where
        type Rs BackupRunsList = BackupRunsListResponse
        type Scopes BackupRunsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient BackupRunsList{..}
          = go _brlProject _brlInstance _brlPageToken
              _brlMaxResults
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy BackupRunsListResource)
                      mempty
