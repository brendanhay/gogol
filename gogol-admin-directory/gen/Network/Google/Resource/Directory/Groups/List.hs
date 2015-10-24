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
-- Module      : Network.Google.Resource.Directory.Groups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve all groups in a domain (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.groups.list@.
module Network.Google.Resource.Directory.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList
    , GroupsList

    -- * Request Lenses
    , glDomain
    , glCustomer
    , glPageToken
    , glUserKey
    , glMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.groups.list@ method which the
-- 'GroupsList' request conforms to.
type GroupsListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             QueryParam "domain" Text :>
               QueryParam "customer" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "userKey" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Groups

-- | Retrieve all groups in a domain (paginated)
--
-- /See:/ 'groupsList' smart constructor.
data GroupsList = GroupsList
    { _glDomain     :: !(Maybe Text)
    , _glCustomer   :: !(Maybe Text)
    , _glPageToken  :: !(Maybe Text)
    , _glUserKey    :: !(Maybe Text)
    , _glMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glDomain'
--
-- * 'glCustomer'
--
-- * 'glPageToken'
--
-- * 'glUserKey'
--
-- * 'glMaxResults'
groupsList
    :: GroupsList
groupsList =
    GroupsList
    { _glDomain = Nothing
    , _glCustomer = Nothing
    , _glPageToken = Nothing
    , _glUserKey = Nothing
    , _glMaxResults = Nothing
    }

-- | Name of the domain. Fill this field to get groups from only this domain.
-- To return all groups in a multi-domain fill customer field instead.
glDomain :: Lens' GroupsList (Maybe Text)
glDomain = lens _glDomain (\ s a -> s{_glDomain = a})

-- | Immutable id of the Google Apps account. In case of multi-domain, to
-- fetch all groups for a customer, fill this field instead of domain.
glCustomer :: Lens' GroupsList (Maybe Text)
glCustomer
  = lens _glCustomer (\ s a -> s{_glCustomer = a})

-- | Token to specify next page in the list
glPageToken :: Lens' GroupsList (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

-- | Email or immutable Id of the user if only those groups are to be listed,
-- the given user is a member of. If Id, it should match with id of user
-- object
glUserKey :: Lens' GroupsList (Maybe Text)
glUserKey
  = lens _glUserKey (\ s a -> s{_glUserKey = a})

-- | Maximum number of results to return. Default is 200
glMaxResults :: Lens' GroupsList (Maybe Int32)
glMaxResults
  = lens _glMaxResults (\ s a -> s{_glMaxResults = a})
      . mapping _Coerce

instance GoogleRequest GroupsList where
        type Rs GroupsList = Groups
        requestClient GroupsList{..}
          = go _glDomain _glCustomer _glPageToken _glUserKey
              _glMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsListResource)
                      mempty
