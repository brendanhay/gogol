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
-- Module      : Network.Google.Resource.Drive.Revisions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsDelete@.
module Network.Google.Resource.Drive.Revisions.Delete
    (
    -- * REST Resource
      RevisionsDeleteResource

    -- * Creating a Request
    , revisionsDelete'
    , RevisionsDelete'

    -- * Request Lenses
    , rdFileId
    , rdRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsDelete@ method which the
-- 'RevisionsDelete'' request conforms to.
type RevisionsDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a revision.
--
-- /See:/ 'revisionsDelete'' smart constructor.
data RevisionsDelete' = RevisionsDelete'
    { _rdFileId     :: !Text
    , _rdRevisionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdFileId'
--
-- * 'rdRevisionId'
revisionsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsDelete'
revisionsDelete' pRdFileId_ pRdRevisionId_ =
    RevisionsDelete'
    { _rdFileId = pRdFileId_
    , _rdRevisionId = pRdRevisionId_
    }

-- | The ID of the file.
rdFileId :: Lens' RevisionsDelete' Text
rdFileId = lens _rdFileId (\ s a -> s{_rdFileId = a})

-- | The ID of the revision.
rdRevisionId :: Lens' RevisionsDelete' Text
rdRevisionId
  = lens _rdRevisionId (\ s a -> s{_rdRevisionId = a})

instance GoogleRequest RevisionsDelete' where
        type Rs RevisionsDelete' = ()
        requestClient RevisionsDelete'{..}
          = go _rdFileId _rdRevisionId (Just AltJSON) drive
          where go
                  = buildClient
                      (Proxy :: Proxy RevisionsDeleteResource)
                      mempty
