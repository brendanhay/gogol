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
-- Module      : Network.Google.Resource.Compute.Instances.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of instance resources contained within the specified
-- zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesList@.
module Network.Google.Resource.Compute.Instances.List
    (
    -- * REST Resource
      InstancesListResource

    -- * Creating a Request
    , instancesList'
    , InstancesList'

    -- * Request Lenses
    , insQuotaUser
    , insPrettyPrint
    , insProject
    , insUserIP
    , insZone
    , insKey
    , insFilter
    , insPageToken
    , insOAuthToken
    , insMaxResults
    , insFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesList@ which the
-- 'InstancesList'' request conforms to.
type InstancesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] InstanceList

-- | Retrieves the list of instance resources contained within the specified
-- zone.
--
-- /See:/ 'instancesList'' smart constructor.
data InstancesList' = InstancesList'
    { _insQuotaUser   :: !(Maybe Text)
    , _insPrettyPrint :: !Bool
    , _insProject     :: !Text
    , _insUserIP      :: !(Maybe Text)
    , _insZone        :: !Text
    , _insKey         :: !(Maybe Key)
    , _insFilter      :: !(Maybe Text)
    , _insPageToken   :: !(Maybe Text)
    , _insOAuthToken  :: !(Maybe OAuthToken)
    , _insMaxResults  :: !Word32
    , _insFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insQuotaUser'
--
-- * 'insPrettyPrint'
--
-- * 'insProject'
--
-- * 'insUserIP'
--
-- * 'insZone'
--
-- * 'insKey'
--
-- * 'insFilter'
--
-- * 'insPageToken'
--
-- * 'insOAuthToken'
--
-- * 'insMaxResults'
--
-- * 'insFields'
instancesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstancesList'
instancesList' pInsProject_ pInsZone_ =
    InstancesList'
    { _insQuotaUser = Nothing
    , _insPrettyPrint = True
    , _insProject = pInsProject_
    , _insUserIP = Nothing
    , _insZone = pInsZone_
    , _insKey = Nothing
    , _insFilter = Nothing
    , _insPageToken = Nothing
    , _insOAuthToken = Nothing
    , _insMaxResults = 500
    , _insFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insQuotaUser :: Lens' InstancesList' (Maybe Text)
insQuotaUser
  = lens _insQuotaUser (\ s a -> s{_insQuotaUser = a})

-- | Returns response with indentations and line breaks.
insPrettyPrint :: Lens' InstancesList' Bool
insPrettyPrint
  = lens _insPrettyPrint
      (\ s a -> s{_insPrettyPrint = a})

-- | Project ID for this request.
insProject :: Lens' InstancesList' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insUserIP :: Lens' InstancesList' (Maybe Text)
insUserIP
  = lens _insUserIP (\ s a -> s{_insUserIP = a})

-- | The name of the zone for this request.
insZone :: Lens' InstancesList' Text
insZone = lens _insZone (\ s a -> s{_insZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insKey :: Lens' InstancesList' (Maybe Key)
insKey = lens _insKey (\ s a -> s{_insKey = a})

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
insFilter :: Lens' InstancesList' (Maybe Text)
insFilter
  = lens _insFilter (\ s a -> s{_insFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
insPageToken :: Lens' InstancesList' (Maybe Text)
insPageToken
  = lens _insPageToken (\ s a -> s{_insPageToken = a})

-- | OAuth 2.0 token for the current user.
insOAuthToken :: Lens' InstancesList' (Maybe OAuthToken)
insOAuthToken
  = lens _insOAuthToken
      (\ s a -> s{_insOAuthToken = a})

-- | Maximum count of results to be returned.
insMaxResults :: Lens' InstancesList' Word32
insMaxResults
  = lens _insMaxResults
      (\ s a -> s{_insMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
insFields :: Lens' InstancesList' (Maybe Text)
insFields
  = lens _insFields (\ s a -> s{_insFields = a})

instance GoogleAuth InstancesList' where
        authKey = insKey . _Just
        authToken = insOAuthToken . _Just

instance GoogleRequest InstancesList' where
        type Rs InstancesList' = InstanceList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesList'{..}
          = go _insQuotaUser (Just _insPrettyPrint) _insProject
              _insUserIP
              _insZone
              _insKey
              _insFilter
              _insPageToken
              _insOAuthToken
              (Just _insMaxResults)
              _insFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesListResource)
                      r
                      u
