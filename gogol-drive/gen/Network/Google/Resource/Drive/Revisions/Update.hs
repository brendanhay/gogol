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
-- Updates a revision with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.update@.
module Network.Google.Resource.Drive.Revisions.Update
    (
    -- * REST Resource
      RevisionsUpdateResource

    -- * Creating a Request
    , revisionsUpdate
    , RevisionsUpdate

    -- * Request Lenses
    , revPayload
    , revFileId
    , revRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.revisions.update@ method which the
-- 'RevisionsUpdate' request conforms to.
type RevisionsUpdateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "revisions" :>
               Capture "revisionId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Revision :> Patch '[JSON] Revision

-- | Updates a revision with patch semantics.
--
-- /See:/ 'revisionsUpdate' smart constructor.
data RevisionsUpdate = RevisionsUpdate
    { _revPayload    :: !Revision
    , _revFileId     :: !Text
    , _revRevisionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'revPayload'
--
-- * 'revFileId'
--
-- * 'revRevisionId'
revisionsUpdate
    :: Revision -- ^ 'revPayload'
    -> Text -- ^ 'revFileId'
    -> Text -- ^ 'revRevisionId'
    -> RevisionsUpdate
revisionsUpdate pRevPayload_ pRevFileId_ pRevRevisionId_ =
    RevisionsUpdate
    { _revPayload = pRevPayload_
    , _revFileId = pRevFileId_
    , _revRevisionId = pRevRevisionId_
    }

-- | Multipart request metadata.
revPayload :: Lens' RevisionsUpdate Revision
revPayload
  = lens _revPayload (\ s a -> s{_revPayload = a})

-- | The ID of the file.
revFileId :: Lens' RevisionsUpdate Text
revFileId
  = lens _revFileId (\ s a -> s{_revFileId = a})

-- | The ID of the revision.
revRevisionId :: Lens' RevisionsUpdate Text
revRevisionId
  = lens _revRevisionId
      (\ s a -> s{_revRevisionId = a})

instance GoogleRequest RevisionsUpdate where
        type Rs RevisionsUpdate = Revision
        requestClient RevisionsUpdate{..}
          = go _revFileId _revRevisionId (Just AltJSON)
              _revPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy RevisionsUpdateResource)
                      mempty
