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
-- Module      : Network.Google.Resource.Drive.Revisions.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a revision. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsPatch@.
module Network.Google.Resource.Drive.Revisions.Patch
    (
    -- * REST Resource
      RevisionsPatchResource

    -- * Creating a Request
    , revisionsPatch'
    , RevisionsPatch'

    -- * Request Lenses
    , rppPayload
    , rppFileId
    , rppRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsPatch@ method which the
-- 'RevisionsPatch'' request conforms to.
type RevisionsPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Revision :> Patch '[JSON] Revision

-- | Updates a revision. This method supports patch semantics.
--
-- /See:/ 'revisionsPatch'' smart constructor.
data RevisionsPatch' = RevisionsPatch'
    { _rppPayload    :: !Revision
    , _rppFileId     :: !Text
    , _rppRevisionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppPayload'
--
-- * 'rppFileId'
--
-- * 'rppRevisionId'
revisionsPatch'
    :: Revision -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsPatch'
revisionsPatch' pRppPayload_ pRppFileId_ pRppRevisionId_ =
    RevisionsPatch'
    { _rppPayload = pRppPayload_
    , _rppFileId = pRppFileId_
    , _rppRevisionId = pRppRevisionId_
    }

-- | Multipart request metadata.
rppPayload :: Lens' RevisionsPatch' Revision
rppPayload
  = lens _rppPayload (\ s a -> s{_rppPayload = a})

-- | The ID for the file.
rppFileId :: Lens' RevisionsPatch' Text
rppFileId
  = lens _rppFileId (\ s a -> s{_rppFileId = a})

-- | The ID for the revision.
rppRevisionId :: Lens' RevisionsPatch' Text
rppRevisionId
  = lens _rppRevisionId
      (\ s a -> s{_rppRevisionId = a})

instance GoogleRequest RevisionsPatch' where
        type Rs RevisionsPatch' = Revision
        requestClient RevisionsPatch'{..}
          = go _rppFileId _rppRevisionId (Just AltJSON)
              _rppPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy RevisionsPatchResource)
                      mempty
