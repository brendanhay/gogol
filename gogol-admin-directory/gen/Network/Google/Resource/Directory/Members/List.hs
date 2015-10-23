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
-- Module      : Network.Google.Resource.Directory.Members.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve all members in a group (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.list@.
module Network.Google.Resource.Directory.Members.List
    (
    -- * REST Resource
      MembersListResource

    -- * Creating a Request
    , membersList
    , MembersList

    -- * Request Lenses
    , mlRoles
    , mlGroupKey
    , mlPageToken
    , mlMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.members.list@ method which the
-- 'MembersList' request conforms to.
type MembersListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 QueryParam "roles" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (JSONText Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Members

-- | Retrieve all members in a group (paginated)
--
-- /See:/ 'membersList' smart constructor.
data MembersList = MembersList
    { _mlRoles      :: !(Maybe Text)
    , _mlGroupKey   :: !Text
    , _mlPageToken  :: !(Maybe Text)
    , _mlMaxResults :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlRoles'
--
-- * 'mlGroupKey'
--
-- * 'mlPageToken'
--
-- * 'mlMaxResults'
membersList
    :: Text -- ^ 'mlGroupKey'
    -> MembersList
membersList pMlGroupKey_ =
    MembersList
    { _mlRoles = Nothing
    , _mlGroupKey = pMlGroupKey_
    , _mlPageToken = Nothing
    , _mlMaxResults = Nothing
    }

-- | Comma separated role values to filter list results on.
mlRoles :: Lens' MembersList (Maybe Text)
mlRoles = lens _mlRoles (\ s a -> s{_mlRoles = a})

-- | Email or immutable Id of the group
mlGroupKey :: Lens' MembersList Text
mlGroupKey
  = lens _mlGroupKey (\ s a -> s{_mlGroupKey = a})

-- | Token to specify next page in the list
mlPageToken :: Lens' MembersList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | Maximum number of results to return. Default is 200
mlMaxResults :: Lens' MembersList (Maybe Int32)
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest MembersList where
        type Rs MembersList = Members
        requestClient MembersList{..}
          = go _mlGroupKey _mlRoles _mlPageToken _mlMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersListResource)
                      mempty
