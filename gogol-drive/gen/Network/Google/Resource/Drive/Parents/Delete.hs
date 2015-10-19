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
-- Module      : Network.Google.Resource.Drive.Parents.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a parent from a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsDelete@.
module Network.Google.Resource.Drive.Parents.Delete
    (
    -- * REST Resource
      ParentsDeleteResource

    -- * Creating a Request
    , parentsDelete'
    , ParentsDelete'

    -- * Request Lenses
    , parFileId
    , parParentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsDelete@ method which the
-- 'ParentsDelete'' request conforms to.
type ParentsDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           Capture "parentId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a parent from a file.
--
-- /See:/ 'parentsDelete'' smart constructor.
data ParentsDelete' = ParentsDelete'
    { _parFileId   :: !Text
    , _parParentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parFileId'
--
-- * 'parParentId'
parentsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsDelete'
parentsDelete' pParFileId_ pParParentId_ =
    ParentsDelete'
    { _parFileId = pParFileId_
    , _parParentId = pParParentId_
    }

-- | The ID of the file.
parFileId :: Lens' ParentsDelete' Text
parFileId
  = lens _parFileId (\ s a -> s{_parFileId = a})

-- | The ID of the parent.
parParentId :: Lens' ParentsDelete' Text
parParentId
  = lens _parParentId (\ s a -> s{_parParentId = a})

instance GoogleRequest ParentsDelete' where
        type Rs ParentsDelete' = ()
        requestClient ParentsDelete'{..}
          = go _parFileId _parParentId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ParentsDeleteResource)
                      mempty
