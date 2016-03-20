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
-- Module      : Network.Google.Resource.Drive.Revisions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a revision\'s metadata or content by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.get@.
module Network.Google.Resource.Drive.Revisions.Get
    (
    -- * REST Resource
      RevisionsGetResource

    -- * Creating a Request
    , revisionsGet
    , RevisionsGet

    -- * Request Lenses
    , rggAcknowledgeAbuse
    , rggFileId
    , rggRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.revisions.get@ method which the
-- 'RevisionsGet' request conforms to.
type RevisionsGetResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "revisions" :>
               Capture "revisionId" Text :>
                 QueryParam "acknowledgeAbuse" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Revision
       :<|>
       "drive" :>
         "v3" :>
           "files" :>
             Capture "fileId" Text :>
               "revisions" :>
                 Capture "revisionId" Text :>
                   QueryParam "acknowledgeAbuse" Bool :>
                     QueryParam "alt" AltMedia :>
                       Get '[OctetStream] Stream

-- | Gets a revision\'s metadata or content by ID.
--
-- /See:/ 'revisionsGet' smart constructor.
data RevisionsGet = RevisionsGet
    { _rggAcknowledgeAbuse :: !Bool
    , _rggFileId           :: !Text
    , _rggRevisionId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggAcknowledgeAbuse'
--
-- * 'rggFileId'
--
-- * 'rggRevisionId'
revisionsGet
    :: Text -- ^ 'rggFileId'
    -> Text -- ^ 'rggRevisionId'
    -> RevisionsGet
revisionsGet pRggFileId_ pRggRevisionId_ =
    RevisionsGet
    { _rggAcknowledgeAbuse = False
    , _rggFileId = pRggFileId_
    , _rggRevisionId = pRggRevisionId_
    }

-- | Whether the user is acknowledging the risk of downloading known malware
-- or other abusive files. This is only applicable when alt=media.
rggAcknowledgeAbuse :: Lens' RevisionsGet Bool
rggAcknowledgeAbuse
  = lens _rggAcknowledgeAbuse
      (\ s a -> s{_rggAcknowledgeAbuse = a})

-- | The ID of the file.
rggFileId :: Lens' RevisionsGet Text
rggFileId
  = lens _rggFileId (\ s a -> s{_rggFileId = a})

-- | The ID of the revision.
rggRevisionId :: Lens' RevisionsGet Text
rggRevisionId
  = lens _rggRevisionId
      (\ s a -> s{_rggRevisionId = a})

instance GoogleRequest RevisionsGet where
        type Rs RevisionsGet = Revision
        requestClient RevisionsGet{..}
          = go _rggFileId _rggRevisionId
              (Just _rggAcknowledgeAbuse)
              (Just AltJSON)
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy RevisionsGetResource)
                      mempty

instance GoogleRequest (MediaDownload RevisionsGet)
         where
        type Rs (MediaDownload RevisionsGet) = Stream
        requestClient (MediaDownload RevisionsGet{..})
          = go _rggFileId _rggRevisionId
              (Just _rggAcknowledgeAbuse)
              (Just AltMedia)
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy RevisionsGetResource)
                      mempty
