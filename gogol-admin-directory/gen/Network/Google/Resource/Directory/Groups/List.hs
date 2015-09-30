{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Directory.Groups.List
    (
    -- * REST Resource
      GroupsListAPI

    -- * Creating a Request
    , groupsList
    , GroupsList

    -- * Request Lenses
    , glQuotaUser
    , glPrettyPrint
    , glUserIp
    , glDomain
    , glCustomer
    , glKey
    , glPageToken
    , glOauthToken
    , glUserKey
    , glMaxResults
    , glFields
    , glAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsList@ which the
-- 'GroupsList' request conforms to.
type GroupsListAPI =
     "groups" :>
       QueryParam "domain" Text :>
         QueryParam "customer" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "userKey" Text :>
               QueryParam "maxResults" Int32 :> Get '[JSON] Groups

-- | Retrieve all groups in a domain (paginated)
--
-- /See:/ 'groupsList' smart constructor.
data GroupsList = GroupsList
    { _glQuotaUser   :: !(Maybe Text)
    , _glPrettyPrint :: !Bool
    , _glUserIp      :: !(Maybe Text)
    , _glDomain      :: !(Maybe Text)
    , _glCustomer    :: !(Maybe Text)
    , _glKey         :: !(Maybe Text)
    , _glPageToken   :: !(Maybe Text)
    , _glOauthToken  :: !(Maybe Text)
    , _glUserKey     :: !(Maybe Text)
    , _glMaxResults  :: !(Maybe Int32)
    , _glFields      :: !(Maybe Text)
    , _glAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glQuotaUser'
--
-- * 'glPrettyPrint'
--
-- * 'glUserIp'
--
-- * 'glDomain'
--
-- * 'glCustomer'
--
-- * 'glKey'
--
-- * 'glPageToken'
--
-- * 'glOauthToken'
--
-- * 'glUserKey'
--
-- * 'glMaxResults'
--
-- * 'glFields'
--
-- * 'glAlt'
groupsList
    :: GroupsList
groupsList =
    GroupsList
    { _glQuotaUser = Nothing
    , _glPrettyPrint = True
    , _glUserIp = Nothing
    , _glDomain = Nothing
    , _glCustomer = Nothing
    , _glKey = Nothing
    , _glPageToken = Nothing
    , _glOauthToken = Nothing
    , _glUserKey = Nothing
    , _glMaxResults = Nothing
    , _glFields = Nothing
    , _glAlt = "json"
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
glUserIp :: Lens' GroupsList' (Maybe Text)
glUserIp = lens _glUserIp (\ s a -> s{_glUserIp = a})

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
glKey :: Lens' GroupsList' (Maybe Text)
glKey = lens _glKey (\ s a -> s{_glKey = a})

-- | Token to specify next page in the list
glPageToken :: Lens' GroupsList' (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

-- | OAuth 2.0 token for the current user.
glOauthToken :: Lens' GroupsList' (Maybe Text)
glOauthToken
  = lens _glOauthToken (\ s a -> s{_glOauthToken = a})

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

-- | Data format for the response.
glAlt :: Lens' GroupsList' Text
glAlt = lens _glAlt (\ s a -> s{_glAlt = a})

instance GoogleRequest GroupsList' where
        type Rs GroupsList' = Groups
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsList{..}
          = go _glQuotaUser _glPrettyPrint _glUserIp _glDomain
              _glCustomer
              _glKey
              _glPageToken
              _glOauthToken
              _glUserKey
              _glMaxResults
              _glFields
              _glAlt
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsListAPI) r u
