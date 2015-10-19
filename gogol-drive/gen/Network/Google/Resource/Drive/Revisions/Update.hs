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
-- Module      : Network.Google.Resource.Drive.Revisions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.update@.
module Network.Google.Resource.Drive.Revisions.Update
    (
    -- * REST Resource
      RevisionsUpdateResource

    -- * Creating a Request
    , revisionsUpdate'
    , RevisionsUpdate'

    -- * Request Lenses
    , ruPayload
    , ruFileId
    , ruRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.revisions.update@ method which the
-- 'RevisionsUpdate'' request conforms to.
type RevisionsUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Revision :> Put '[JSON] Revision

-- | Updates a revision.
--
-- /See:/ 'revisionsUpdate'' smart constructor.
data RevisionsUpdate' = RevisionsUpdate'
    { _ruPayload    :: !Revision
    , _ruFileId     :: !Text
    , _ruRevisionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruPayload'
--
-- * 'ruFileId'
--
-- * 'ruRevisionId'
revisionsUpdate'
    :: Revision -- ^ 'ruPayload'
    -> Text -- ^ 'ruFileId'
    -> Text -- ^ 'ruRevisionId'
    -> RevisionsUpdate'
revisionsUpdate' pRuPayload_ pRuFileId_ pRuRevisionId_ =
    RevisionsUpdate'
    { _ruPayload = pRuPayload_
    , _ruFileId = pRuFileId_
    , _ruRevisionId = pRuRevisionId_
    }

-- | Multipart request metadata.
ruPayload :: Lens' RevisionsUpdate' Revision
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | The ID for the file.
ruFileId :: Lens' RevisionsUpdate' Text
ruFileId = lens _ruFileId (\ s a -> s{_ruFileId = a})

-- | The ID for the revision.
ruRevisionId :: Lens' RevisionsUpdate' Text
ruRevisionId
  = lens _ruRevisionId (\ s a -> s{_ruRevisionId = a})

instance GoogleRequest RevisionsUpdate' where
        type Rs RevisionsUpdate' = Revision
        requestClient RevisionsUpdate'{..}
          = go _ruFileId _ruRevisionId (Just AltJSON)
              _ruPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy RevisionsUpdateResource)
                      mempty
