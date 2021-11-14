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
-- Module      : Network.Google.Resource.Drive.Revisions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s revisions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.list@.
module Network.Google.Resource.Drive.Revisions.List
    (
    -- * REST Resource
      RevisionsListResource

    -- * Creating a Request
    , revisionsList
    , RevisionsList

    -- * Request Lenses
    , rllPageToken
    , rllFileId
    , rllPageSize
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.revisions.list@ method which the
-- 'RevisionsList' request conforms to.
type RevisionsListResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "revisions" :>
               QueryParam "pageToken" Text :>
                 QueryParam "pageSize" (Textual Int32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] RevisionList

-- | Lists a file\'s revisions.
--
-- /See:/ 'revisionsList' smart constructor.
data RevisionsList =
  RevisionsList'
    { _rllPageToken :: !(Maybe Text)
    , _rllFileId :: !Text
    , _rllPageSize :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevisionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllPageToken'
--
-- * 'rllFileId'
--
-- * 'rllPageSize'
revisionsList
    :: Text -- ^ 'rllFileId'
    -> RevisionsList
revisionsList pRllFileId_ =
  RevisionsList'
    {_rllPageToken = Nothing, _rllFileId = pRllFileId_, _rllPageSize = 200}


-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response.
rllPageToken :: Lens' RevisionsList (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | The ID of the file.
rllFileId :: Lens' RevisionsList Text
rllFileId
  = lens _rllFileId (\ s a -> s{_rllFileId = a})

-- | The maximum number of revisions to return per page.
rllPageSize :: Lens' RevisionsList Int32
rllPageSize
  = lens _rllPageSize (\ s a -> s{_rllPageSize = a}) .
      _Coerce

instance GoogleRequest RevisionsList where
        type Rs RevisionsList = RevisionList
        type Scopes RevisionsList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient RevisionsList'{..}
          = go _rllFileId _rllPageToken (Just _rllPageSize)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy RevisionsListResource)
                      mempty
