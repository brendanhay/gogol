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
-- Module      : Network.Google.Resource.Drive.Files.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a file\'s metadata by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesGet@.
module Network.Google.Resource.Drive.Files.Get
    (
    -- * REST Resource
      FilesGetResource

    -- * Creating a Request
    , filesGet'
    , FilesGet'

    -- * Request Lenses
    , fgUpdateViewedDate
    , fgProjection
    , fgAcknowledgeAbuse
    , fgFileId
    , fgRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesGet@ method which the
-- 'FilesGet'' request conforms to.
type FilesGetResource =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "updateViewedDate" Bool :>
           QueryParam "projection" FilesGetProjection :>
             QueryParam "acknowledgeAbuse" Bool :>
               QueryParam "revisionId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "files" :>
         Capture "fileId" Text :>
           QueryParam "updateViewedDate" Bool :>
             QueryParam "projection" FilesGetProjection :>
               QueryParam "acknowledgeAbuse" Bool :>
                 QueryParam "revisionId" Text :>
                   QueryParam "alt" AltMedia :>
                     Get '[OctetStream] Stream

-- | Gets a file\'s metadata by ID.
--
-- /See:/ 'filesGet'' smart constructor.
data FilesGet' = FilesGet'
    { _fgUpdateViewedDate :: !Bool
    , _fgProjection       :: !(Maybe FilesGetProjection)
    , _fgAcknowledgeAbuse :: !Bool
    , _fgFileId           :: !Text
    , _fgRevisionId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgUpdateViewedDate'
--
-- * 'fgProjection'
--
-- * 'fgAcknowledgeAbuse'
--
-- * 'fgFileId'
--
-- * 'fgRevisionId'
filesGet'
    :: Text -- ^ 'fileId'
    -> FilesGet'
filesGet' pFgFileId_ =
    FilesGet'
    { _fgUpdateViewedDate = False
    , _fgProjection = Nothing
    , _fgAcknowledgeAbuse = False
    , _fgFileId = pFgFileId_
    , _fgRevisionId = Nothing
    }

-- | Deprecated: Use files.update with modifiedDateBehavior=noChange,
-- updateViewedDate=true and an empty request body.
fgUpdateViewedDate :: Lens' FilesGet' Bool
fgUpdateViewedDate
  = lens _fgUpdateViewedDate
      (\ s a -> s{_fgUpdateViewedDate = a})

-- | This parameter is deprecated and has no function.
fgProjection :: Lens' FilesGet' (Maybe FilesGetProjection)
fgProjection
  = lens _fgProjection (\ s a -> s{_fgProjection = a})

-- | Whether the user is acknowledging the risk of downloading known malware
-- or other abusive files.
fgAcknowledgeAbuse :: Lens' FilesGet' Bool
fgAcknowledgeAbuse
  = lens _fgAcknowledgeAbuse
      (\ s a -> s{_fgAcknowledgeAbuse = a})

-- | The ID for the file in question.
fgFileId :: Lens' FilesGet' Text
fgFileId = lens _fgFileId (\ s a -> s{_fgFileId = a})

-- | Specifies the Revision ID that should be downloaded. Ignored unless
-- alt=media is specified.
fgRevisionId :: Lens' FilesGet' (Maybe Text)
fgRevisionId
  = lens _fgRevisionId (\ s a -> s{_fgRevisionId = a})

instance GoogleRequest FilesGet' where
        type Rs FilesGet' = File
        requestClient FilesGet'{..}
          = go _fgFileId (Just _fgUpdateViewedDate)
              _fgProjection
              (Just _fgAcknowledgeAbuse)
              _fgRevisionId
              (Just AltJSON)
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty

instance GoogleRequest (MediaDownload FilesGet')
         where
        type Rs (MediaDownload FilesGet') = Stream
        requestClient (MediaDownload FilesGet'{..})
          = go _fgFileId (Just _fgUpdateViewedDate)
              _fgProjection
              (Just _fgAcknowledgeAbuse)
              _fgRevisionId
              (Just AltMedia)
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty
