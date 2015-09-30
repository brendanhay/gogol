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
-- Module      : Network.Google.Resource.Clouduseraccounts.Linux.GetLinuxAccountViews
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of user accounts for an instance within a specific
-- project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @ClouduseraccountsLinuxGetLinuxAccountViews@.
module Network.Google.Resource.Clouduseraccounts.Linux.GetLinuxAccountViews
    (
    -- * REST Resource
      LinuxGetLinuxAccountViewsResource

    -- * Creating a Request
    , linuxGetLinuxAccountViews'
    , LinuxGetLinuxAccountViews'

    -- * Request Lenses
    , lglavQuotaUser
    , lglavPrettyPrint
    , lglavOrderBy
    , lglavProject
    , lglavUserIp
    , lglavZone
    , lglavKey
    , lglavFilter
    , lglavPageToken
    , lglavOauthToken
    , lglavMaxResults
    , lglavFields
    , lglavAlt
    , lglavInstance
    ) where

import           Network.Google.ComputeUserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouduseraccountsLinuxGetLinuxAccountViews@ which the
-- 'LinuxGetLinuxAccountViews'' request conforms to.
type LinuxGetLinuxAccountViewsResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "linuxAccountViews" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "orderBy" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   QueryParam "instance" Text :>
                                     Post '[JSON]
                                       LinuxGetLinuxAccountViewsResponse

-- | Retrieves a list of user accounts for an instance within a specific
-- project.
--
-- /See:/ 'linuxGetLinuxAccountViews'' smart constructor.
data LinuxGetLinuxAccountViews' = LinuxGetLinuxAccountViews'
    { _lglavQuotaUser   :: !(Maybe Text)
    , _lglavPrettyPrint :: !Bool
    , _lglavOrderBy     :: !(Maybe Text)
    , _lglavProject     :: !Text
    , _lglavUserIp      :: !(Maybe Text)
    , _lglavZone        :: !Text
    , _lglavKey         :: !(Maybe Text)
    , _lglavFilter      :: !(Maybe Text)
    , _lglavPageToken   :: !(Maybe Text)
    , _lglavOauthToken  :: !(Maybe Text)
    , _lglavMaxResults  :: !Word32
    , _lglavFields      :: !(Maybe Text)
    , _lglavAlt         :: !Alt
    , _lglavInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxGetLinuxAccountViews'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lglavQuotaUser'
--
-- * 'lglavPrettyPrint'
--
-- * 'lglavOrderBy'
--
-- * 'lglavProject'
--
-- * 'lglavUserIp'
--
-- * 'lglavZone'
--
-- * 'lglavKey'
--
-- * 'lglavFilter'
--
-- * 'lglavPageToken'
--
-- * 'lglavOauthToken'
--
-- * 'lglavMaxResults'
--
-- * 'lglavFields'
--
-- * 'lglavAlt'
--
-- * 'lglavInstance'
linuxGetLinuxAccountViews'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> LinuxGetLinuxAccountViews'
linuxGetLinuxAccountViews' pLglavProject_ pLglavZone_ pLglavInstance_ =
    LinuxGetLinuxAccountViews'
    { _lglavQuotaUser = Nothing
    , _lglavPrettyPrint = True
    , _lglavOrderBy = Nothing
    , _lglavProject = pLglavProject_
    , _lglavUserIp = Nothing
    , _lglavZone = pLglavZone_
    , _lglavKey = Nothing
    , _lglavFilter = Nothing
    , _lglavPageToken = Nothing
    , _lglavOauthToken = Nothing
    , _lglavMaxResults = 500
    , _lglavFields = Nothing
    , _lglavAlt = JSON
    , _lglavInstance = pLglavInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lglavQuotaUser :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavQuotaUser
  = lens _lglavQuotaUser
      (\ s a -> s{_lglavQuotaUser = a})

-- | Returns response with indentations and line breaks.
lglavPrettyPrint :: Lens' LinuxGetLinuxAccountViews' Bool
lglavPrettyPrint
  = lens _lglavPrettyPrint
      (\ s a -> s{_lglavPrettyPrint = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
lglavOrderBy :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavOrderBy
  = lens _lglavOrderBy (\ s a -> s{_lglavOrderBy = a})

-- | Project ID for this request.
lglavProject :: Lens' LinuxGetLinuxAccountViews' Text
lglavProject
  = lens _lglavProject (\ s a -> s{_lglavProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lglavUserIp :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavUserIp
  = lens _lglavUserIp (\ s a -> s{_lglavUserIp = a})

-- | Name of the zone for this request.
lglavZone :: Lens' LinuxGetLinuxAccountViews' Text
lglavZone
  = lens _lglavZone (\ s a -> s{_lglavZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lglavKey :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavKey = lens _lglavKey (\ s a -> s{_lglavKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
lglavFilter :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavFilter
  = lens _lglavFilter (\ s a -> s{_lglavFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
lglavPageToken :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavPageToken
  = lens _lglavPageToken
      (\ s a -> s{_lglavPageToken = a})

-- | OAuth 2.0 token for the current user.
lglavOauthToken :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavOauthToken
  = lens _lglavOauthToken
      (\ s a -> s{_lglavOauthToken = a})

-- | Maximum count of results to be returned.
lglavMaxResults :: Lens' LinuxGetLinuxAccountViews' Word32
lglavMaxResults
  = lens _lglavMaxResults
      (\ s a -> s{_lglavMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lglavFields :: Lens' LinuxGetLinuxAccountViews' (Maybe Text)
lglavFields
  = lens _lglavFields (\ s a -> s{_lglavFields = a})

-- | Data format for the response.
lglavAlt :: Lens' LinuxGetLinuxAccountViews' Alt
lglavAlt = lens _lglavAlt (\ s a -> s{_lglavAlt = a})

-- | The fully-qualified URL of the virtual machine requesting the views.
lglavInstance :: Lens' LinuxGetLinuxAccountViews' Text
lglavInstance
  = lens _lglavInstance
      (\ s a -> s{_lglavInstance = a})

instance GoogleRequest LinuxGetLinuxAccountViews'
         where
        type Rs LinuxGetLinuxAccountViews' =
             LinuxGetLinuxAccountViewsResponse
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u LinuxGetLinuxAccountViews'{..}
          = go _lglavQuotaUser (Just _lglavPrettyPrint)
              _lglavOrderBy
              _lglavProject
              _lglavUserIp
              _lglavZone
              _lglavKey
              _lglavFilter
              _lglavPageToken
              _lglavOauthToken
              (Just _lglavMaxResults)
              _lglavFields
              (Just _lglavAlt)
              (Just _lglavInstance)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LinuxGetLinuxAccountViewsResource)
                      r
                      u
