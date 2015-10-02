{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Groups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all groups in a domain (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsList@.
module Network.Google.Resource.Directory.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList'
    , GroupsList'

    -- * Request Lenses
    , glQuotaUser
    , glPrettyPrint
    , glUserIP
    , glDomain
    , glCustomer
    , glKey
    , glPageToken
    , glOAuthToken
    , glUserKey
    , glMaxResults
    , glFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsList@ which the
-- 'GroupsList'' request conforms to.
type GroupsListResource =
     "groups" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "domain" Text :>
               QueryParam "customer" Text :>
                 QueryParam "key" Key :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "userKey" Text :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Groups

-- | Retrieve all groups in a domain (paginated)
--
-- /See:/ 'groupsList'' smart constructor.
data GroupsList' = GroupsList'
    { _glQuotaUser   :: !(Maybe Text)
    , _glPrettyPrint :: !Bool
    , _glUserIP      :: !(Maybe Text)
    , _glDomain      :: !(Maybe Text)
    , _glCustomer    :: !(Maybe Text)
    , _glKey         :: !(Maybe Key)
    , _glPageToken   :: !(Maybe Text)
    , _glOAuthToken  :: !(Maybe OAuthToken)
    , _glUserKey     :: !(Maybe Text)
    , _glMaxResults  :: !(Maybe Int32)
    , _glFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glQuotaUser'
--
-- * 'glPrettyPrint'
--
-- * 'glUserIP'
--
-- * 'glDomain'
--
-- * 'glCustomer'
--
-- * 'glKey'
--
-- * 'glPageToken'
--
-- * 'glOAuthToken'
--
-- * 'glUserKey'
--
-- * 'glMaxResults'
--
-- * 'glFields'
groupsList'
    :: GroupsList'
groupsList' =
    GroupsList'
    { _glQuotaUser = Nothing
    , _glPrettyPrint = True
    , _glUserIP = Nothing
    , _glDomain = Nothing
    , _glCustomer = Nothing
    , _glKey = Nothing
    , _glPageToken = Nothing
    , _glOAuthToken = Nothing
    , _glUserKey = Nothing
    , _glMaxResults = Nothing
    , _glFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
glQuotaUser :: Lens' GroupsList' (Maybe Text)
glQuotaUser
  = lens _glQuotaUser (\ s a -> s{_glQuotaUser = a})

-- | Returns response with indentations and line breaks.
glPrettyPrint :: Lens' GroupsList' Bool
glPrettyPrint
  = lens _glPrettyPrint
      (\ s a -> s{_glPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
glUserIP :: Lens' GroupsList' (Maybe Text)
glUserIP = lens _glUserIP (\ s a -> s{_glUserIP = a})

-- | Name of the domain. Fill this field to get groups from only this domain.
-- To return all groups in a multi-domain fill customer field instead.
glDomain :: Lens' GroupsList' (Maybe Text)
glDomain = lens _glDomain (\ s a -> s{_glDomain = a})

-- | Immutable id of the Google Apps account. In case of multi-domain, to
-- fetch all groups for a customer, fill this field instead of domain.
glCustomer :: Lens' GroupsList' (Maybe Text)
glCustomer
  = lens _glCustomer (\ s a -> s{_glCustomer = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
glKey :: Lens' GroupsList' (Maybe Key)
glKey = lens _glKey (\ s a -> s{_glKey = a})

-- | Token to specify next page in the list
glPageToken :: Lens' GroupsList' (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

-- | OAuth 2.0 token for the current user.
glOAuthToken :: Lens' GroupsList' (Maybe OAuthToken)
glOAuthToken
  = lens _glOAuthToken (\ s a -> s{_glOAuthToken = a})

-- | Email or immutable Id of the user if only those groups are to be listed,
-- the given user is a member of. If Id, it should match with id of user
-- object
glUserKey :: Lens' GroupsList' (Maybe Text)
glUserKey
  = lens _glUserKey (\ s a -> s{_glUserKey = a})

-- | Maximum number of results to return. Default is 200
glMaxResults :: Lens' GroupsList' (Maybe Int32)
glMaxResults
  = lens _glMaxResults (\ s a -> s{_glMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
glFields :: Lens' GroupsList' (Maybe Text)
glFields = lens _glFields (\ s a -> s{_glFields = a})

instance GoogleAuth GroupsList' where
        authKey = glKey . _Just
        authToken = glOAuthToken . _Just

instance GoogleRequest GroupsList' where
        type Rs GroupsList' = Groups
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsList'{..}
          = go _glQuotaUser (Just _glPrettyPrint) _glUserIP
              _glDomain
              _glCustomer
              _glKey
              _glPageToken
              _glOAuthToken
              _glUserKey
              _glMaxResults
              _glFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsListResource)
                      r
                      u
