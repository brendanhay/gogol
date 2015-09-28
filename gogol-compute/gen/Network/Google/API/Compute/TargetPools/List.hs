{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.TargetPools.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of TargetPool resources available to the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.list@.
module Network.Google.API.Compute.TargetPools.List
    (
    -- * REST Resource
      TargetPoolsListAPI

    -- * Creating a Request
    , targetPoolsList'
    , TargetPoolsList'

    -- * Request Lenses
    , tplQuotaUser
    , tplPrettyPrint
    , tplProject
    , tplUserIp
    , tplKey
    , tplFilter
    , tplRegion
    , tplPageToken
    , tplOauthToken
    , tplMaxResults
    , tplFields
    , tplAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.targetPools.list which the
-- 'TargetPoolsList'' request conforms to.
type TargetPoolsListAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
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
                                 Get '[JSON] TargetPoolList

-- | Retrieves the list of TargetPool resources available to the specified
-- project and region.
--
-- /See:/ 'targetPoolsList'' smart constructor.
data TargetPoolsList' = TargetPoolsList'
    { _tplQuotaUser   :: !(Maybe Text)
    , _tplPrettyPrint :: !Bool
    , _tplProject     :: !Text
    , _tplUserIp      :: !(Maybe Text)
    , _tplKey         :: !(Maybe Text)
    , _tplFilter      :: !(Maybe Text)
    , _tplRegion      :: !Text
    , _tplPageToken   :: !(Maybe Text)
    , _tplOauthToken  :: !(Maybe Text)
    , _tplMaxResults  :: !Word32
    , _tplFields      :: !(Maybe Text)
    , _tplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplQuotaUser'
--
-- * 'tplPrettyPrint'
--
-- * 'tplProject'
--
-- * 'tplUserIp'
--
-- * 'tplKey'
--
-- * 'tplFilter'
--
-- * 'tplRegion'
--
-- * 'tplPageToken'
--
-- * 'tplOauthToken'
--
-- * 'tplMaxResults'
--
-- * 'tplFields'
--
-- * 'tplAlt'
targetPoolsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> TargetPoolsList'
targetPoolsList' pTplProject_ pTplRegion_ =
    TargetPoolsList'
    { _tplQuotaUser = Nothing
    , _tplPrettyPrint = True
    , _tplProject = pTplProject_
    , _tplUserIp = Nothing
    , _tplKey = Nothing
    , _tplFilter = Nothing
    , _tplRegion = pTplRegion_
    , _tplPageToken = Nothing
    , _tplOauthToken = Nothing
    , _tplMaxResults = 500
    , _tplFields = Nothing
    , _tplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tplQuotaUser :: Lens' TargetPoolsList' (Maybe Text)
tplQuotaUser
  = lens _tplQuotaUser (\ s a -> s{_tplQuotaUser = a})

-- | Returns response with indentations and line breaks.
tplPrettyPrint :: Lens' TargetPoolsList' Bool
tplPrettyPrint
  = lens _tplPrettyPrint
      (\ s a -> s{_tplPrettyPrint = a})

-- | Name of the project scoping this request.
tplProject :: Lens' TargetPoolsList' Text
tplProject
  = lens _tplProject (\ s a -> s{_tplProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tplUserIp :: Lens' TargetPoolsList' (Maybe Text)
tplUserIp
  = lens _tplUserIp (\ s a -> s{_tplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tplKey :: Lens' TargetPoolsList' (Maybe Text)
tplKey = lens _tplKey (\ s a -> s{_tplKey = a})

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
tplFilter :: Lens' TargetPoolsList' (Maybe Text)
tplFilter
  = lens _tplFilter (\ s a -> s{_tplFilter = a})

-- | Name of the region scoping this request.
tplRegion :: Lens' TargetPoolsList' Text
tplRegion
  = lens _tplRegion (\ s a -> s{_tplRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tplPageToken :: Lens' TargetPoolsList' (Maybe Text)
tplPageToken
  = lens _tplPageToken (\ s a -> s{_tplPageToken = a})

-- | OAuth 2.0 token for the current user.
tplOauthToken :: Lens' TargetPoolsList' (Maybe Text)
tplOauthToken
  = lens _tplOauthToken
      (\ s a -> s{_tplOauthToken = a})

-- | Maximum count of results to be returned.
tplMaxResults :: Lens' TargetPoolsList' Word32
tplMaxResults
  = lens _tplMaxResults
      (\ s a -> s{_tplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tplFields :: Lens' TargetPoolsList' (Maybe Text)
tplFields
  = lens _tplFields (\ s a -> s{_tplFields = a})

-- | Data format for the response.
tplAlt :: Lens' TargetPoolsList' Alt
tplAlt = lens _tplAlt (\ s a -> s{_tplAlt = a})

instance GoogleRequest TargetPoolsList' where
        type Rs TargetPoolsList' = TargetPoolList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsList'{..}
          = go _tplQuotaUser (Just _tplPrettyPrint) _tplProject
              _tplUserIp
              _tplKey
              _tplFilter
              _tplRegion
              _tplPageToken
              _tplOauthToken
              (Just _tplMaxResults)
              _tplFields
              (Just _tplAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TargetPoolsListAPI)
                      r
                      u
