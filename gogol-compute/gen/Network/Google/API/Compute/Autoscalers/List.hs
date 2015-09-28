{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Autoscalers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.list@.
module Network.Google.API.Compute.Autoscalers.List
    (
    -- * REST Resource
      AutoscalersListAPI

    -- * Creating a Request
    , autoscalersList'
    , AutoscalersList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alProject
    , alUserIp
    , alZone
    , alKey
    , alFilter
    , alPageToken
    , alOauthToken
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.autoscalers.list which the
-- 'AutoscalersList'' request conforms to.
type AutoscalersListAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] AutoscalerList

-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
--
-- /See:/ 'autoscalersList'' smart constructor.
data AutoscalersList' = AutoscalersList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alProject     :: !Text
    , _alUserIp      :: !(Maybe Text)
    , _alZone        :: !Text
    , _alKey         :: !(Maybe Text)
    , _alFilter      :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alMaxResults  :: !Word32
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alProject'
--
-- * 'alUserIp'
--
-- * 'alZone'
--
-- * 'alKey'
--
-- * 'alFilter'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
autoscalersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AutoscalersList'
autoscalersList' pAlProject_ pAlZone_ =
    AutoscalersList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alProject = pAlProject_
    , _alUserIp = Nothing
    , _alZone = pAlZone_
    , _alKey = Nothing
    , _alFilter = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alMaxResults = 500
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AutoscalersList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AutoscalersList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | Name of the project scoping this request.
alProject :: Lens' AutoscalersList' Text
alProject
  = lens _alProject (\ s a -> s{_alProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AutoscalersList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | Name of the zone scoping this request.
alZone :: Lens' AutoscalersList' Text
alZone = lens _alZone (\ s a -> s{_alZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AutoscalersList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

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
alFilter :: Lens' AutoscalersList' (Maybe Text)
alFilter = lens _alFilter (\ s a -> s{_alFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
alPageToken :: Lens' AutoscalersList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AutoscalersList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | Maximum count of results to be returned.
alMaxResults :: Lens' AutoscalersList' Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AutoscalersList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AutoscalersList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AutoscalersList' where
        type Rs AutoscalersList' = AutoscalerList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alProject
              _alUserIp
              _alZone
              _alKey
              _alFilter
              _alPageToken
              _alOauthToken
              (Just _alMaxResults)
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AutoscalersListAPI)
                      r
                      u
