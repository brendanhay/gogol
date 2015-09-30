{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Autoscalers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersList@.
module Compute.Autoscalers.List
    (
    -- * REST Resource
      AutoscalersListAPI

    -- * Creating a Request
    , autoscalersList
    , AutoscalersList

    -- * Request Lenses
    , allQuotaUser
    , allPrettyPrint
    , allProject
    , allUserIp
    , allZone
    , allKey
    , allFilter
    , allPageToken
    , allOauthToken
    , allMaxResults
    , allFields
    , allAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersList@ which the
-- 'AutoscalersList' request conforms to.
type AutoscalersListAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   Get '[JSON] AutoscalerList

-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
--
-- /See:/ 'autoscalersList' smart constructor.
data AutoscalersList = AutoscalersList
    { _allQuotaUser   :: !(Maybe Text)
    , _allPrettyPrint :: !Bool
    , _allProject     :: !Text
    , _allUserIp      :: !(Maybe Text)
    , _allZone        :: !Text
    , _allKey         :: !(Maybe Text)
    , _allFilter      :: !(Maybe Text)
    , _allPageToken   :: !(Maybe Text)
    , _allOauthToken  :: !(Maybe Text)
    , _allMaxResults  :: !Word32
    , _allFields      :: !(Maybe Text)
    , _allAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allQuotaUser'
--
-- * 'allPrettyPrint'
--
-- * 'allProject'
--
-- * 'allUserIp'
--
-- * 'allZone'
--
-- * 'allKey'
--
-- * 'allFilter'
--
-- * 'allPageToken'
--
-- * 'allOauthToken'
--
-- * 'allMaxResults'
--
-- * 'allFields'
--
-- * 'allAlt'
autoscalersList
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AutoscalersList
autoscalersList pAllProject_ pAllZone_ =
    AutoscalersList
    { _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allProject = pAllProject_
    , _allUserIp = Nothing
    , _allZone = pAllZone_
    , _allKey = Nothing
    , _allFilter = Nothing
    , _allPageToken = Nothing
    , _allOauthToken = Nothing
    , _allMaxResults = 500
    , _allFields = Nothing
    , _allAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
allQuotaUser :: Lens' AutoscalersList' (Maybe Text)
allQuotaUser
  = lens _allQuotaUser (\ s a -> s{_allQuotaUser = a})

-- | Returns response with indentations and line breaks.
allPrettyPrint :: Lens' AutoscalersList' Bool
allPrettyPrint
  = lens _allPrettyPrint
      (\ s a -> s{_allPrettyPrint = a})

-- | Name of the project scoping this request.
allProject :: Lens' AutoscalersList' Text
allProject
  = lens _allProject (\ s a -> s{_allProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
allUserIp :: Lens' AutoscalersList' (Maybe Text)
allUserIp
  = lens _allUserIp (\ s a -> s{_allUserIp = a})

-- | Name of the zone scoping this request.
allZone :: Lens' AutoscalersList' Text
allZone = lens _allZone (\ s a -> s{_allZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AutoscalersList' (Maybe Text)
allKey = lens _allKey (\ s a -> s{_allKey = a})

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
allFilter :: Lens' AutoscalersList' (Maybe Text)
allFilter
  = lens _allFilter (\ s a -> s{_allFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
allPageToken :: Lens' AutoscalersList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | OAuth 2.0 token for the current user.
allOauthToken :: Lens' AutoscalersList' (Maybe Text)
allOauthToken
  = lens _allOauthToken
      (\ s a -> s{_allOauthToken = a})

-- | Maximum count of results to be returned.
allMaxResults :: Lens' AutoscalersList' Word32
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AutoscalersList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

-- | Data format for the response.
allAlt :: Lens' AutoscalersList' Text
allAlt = lens _allAlt (\ s a -> s{_allAlt = a})

instance GoogleRequest AutoscalersList' where
        type Rs AutoscalersList' = AutoscalerList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersList{..}
          = go _allQuotaUser _allPrettyPrint _allProject
              _allUserIp
              _allZone
              _allKey
              _allFilter
              _allPageToken
              _allOauthToken
              (Just _allMaxResults)
              _allFields
              _allAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AutoscalersListAPI)
                      r
                      u
