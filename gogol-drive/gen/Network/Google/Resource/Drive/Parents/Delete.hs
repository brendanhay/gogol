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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a parent from a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.parents.delete@.
module Network.Google.Resource.Drive.Parents.Delete
    (
    -- * REST Resource
      ParentsDeleteResource

    -- * Creating a Request
    , parentsDelete
    , ParentsDelete

    -- * Request Lenses
    , pddFileId
    , pddParentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.parents.delete@ method which the
-- 'ParentsDelete' request conforms to.
type ParentsDeleteResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "parents" :>
               Capture "parentId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a parent from a file.
--
-- /See:/ 'parentsDelete' smart constructor.
data ParentsDelete = ParentsDelete
    { _pddFileId   :: !Text
    , _pddParentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddFileId'
--
-- * 'pddParentId'
parentsDelete
    :: Text -- ^ 'pddFileId'
    -> Text -- ^ 'pddParentId'
    -> ParentsDelete
parentsDelete pPddFileId_ pPddParentId_ =
    ParentsDelete
    { _pddFileId = pPddFileId_
    , _pddParentId = pPddParentId_
    }

-- | The ID of the file.
pddFileId :: Lens' ParentsDelete Text
pddFileId
  = lens _pddFileId (\ s a -> s{_pddFileId = a})

-- | The ID of the parent.
pddParentId :: Lens' ParentsDelete Text
pddParentId
  = lens _pddParentId (\ s a -> s{_pddParentId = a})

instance GoogleRequest ParentsDelete where
        type Rs ParentsDelete = ()
        type Scopes ParentsDelete =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient ParentsDelete{..}
          = go _pddFileId _pddParentId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ParentsDeleteResource)
                      mempty
