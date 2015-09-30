{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Zones.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of zone resources available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeZonesList@.
module Compute.Zones.List
    (
    -- * REST Resource
      ZonesListAPI

    -- * Creating a Request
    , zonesList
    , ZonesList

    -- * Request Lenses
    , zlQuotaUser
    , zlPrettyPrint
    , zlProject
    , zlUserIp
    , zlKey
    , zlFilter
    , zlPageToken
    , zlOauthToken
    , zlMaxResults
    , zlFields
    , zlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeZonesList@ which the
-- 'ZonesList' request conforms to.
type ZonesListAPI =
     Capture "project" Text :>
       "zones" :>
         QueryParam "filter" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] ZoneList

-- | Retrieves the list of zone resources available to the specified project.
--
-- /See:/ 'zonesList' smart constructor.
data ZonesList = ZonesList
    { _zlQuotaUser   :: !(Maybe Text)
    , _zlPrettyPrint :: !Bool
    , _zlProject     :: !Text
    , _zlUserIp      :: !(Maybe Text)
    , _zlKey         :: !(Maybe Text)
    , _zlFilter      :: !(Maybe Text)
    , _zlPageToken   :: !(Maybe Text)
    , _zlOauthToken  :: !(Maybe Text)
    , _zlMaxResults  :: !Word32
    , _zlFields      :: !(Maybe Text)
    , _zlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZonesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlQuotaUser'
--
-- * 'zlPrettyPrint'
--
-- * 'zlProject'
--
-- * 'zlUserIp'
--
-- * 'zlKey'
--
-- * 'zlFilter'
--
-- * 'zlPageToken'
--
-- * 'zlOauthToken'
--
-- * 'zlMaxResults'
--
-- * 'zlFields'
--
-- * 'zlAlt'
zonesList
    :: Text -- ^ 'project'
    -> ZonesList
zonesList pZlProject_ =
    ZonesList
    { _zlQuotaUser = Nothing
    , _zlPrettyPrint = True
    , _zlProject = pZlProject_
    , _zlUserIp = Nothing
    , _zlKey = Nothing
    , _zlFilter = Nothing
    , _zlPageToken = Nothing
    , _zlOauthToken = Nothing
    , _zlMaxResults = 500
    , _zlFields = Nothing
    , _zlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zlQuotaUser :: Lens' ZonesList' (Maybe Text)
zlQuotaUser
  = lens _zlQuotaUser (\ s a -> s{_zlQuotaUser = a})

-- | Returns response with indentations and line breaks.
zlPrettyPrint :: Lens' ZonesList' Bool
zlPrettyPrint
  = lens _zlPrettyPrint
      (\ s a -> s{_zlPrettyPrint = a})

-- | Project ID for this request.
zlProject :: Lens' ZonesList' Text
zlProject
  = lens _zlProject (\ s a -> s{_zlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zlUserIp :: Lens' ZonesList' (Maybe Text)
zlUserIp = lens _zlUserIp (\ s a -> s{_zlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zlKey :: Lens' ZonesList' (Maybe Text)
zlKey = lens _zlKey (\ s a -> s{_zlKey = a})

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
zlFilter :: Lens' ZonesList' (Maybe Text)
zlFilter = lens _zlFilter (\ s a -> s{_zlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
zlPageToken :: Lens' ZonesList' (Maybe Text)
zlPageToken
  = lens _zlPageToken (\ s a -> s{_zlPageToken = a})

-- | OAuth 2.0 token for the current user.
zlOauthToken :: Lens' ZonesList' (Maybe Text)
zlOauthToken
  = lens _zlOauthToken (\ s a -> s{_zlOauthToken = a})

-- | Maximum count of results to be returned.
zlMaxResults :: Lens' ZonesList' Word32
zlMaxResults
  = lens _zlMaxResults (\ s a -> s{_zlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
zlFields :: Lens' ZonesList' (Maybe Text)
zlFields = lens _zlFields (\ s a -> s{_zlFields = a})

-- | Data format for the response.
zlAlt :: Lens' ZonesList' Text
zlAlt = lens _zlAlt (\ s a -> s{_zlAlt = a})

instance GoogleRequest ZonesList' where
        type Rs ZonesList' = ZoneList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ZonesList{..}
          = go _zlQuotaUser _zlPrettyPrint _zlProject _zlUserIp
              _zlKey
              _zlFilter
              _zlPageToken
              _zlOauthToken
              (Just _zlMaxResults)
              _zlFields
              _zlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ZonesListAPI) r u
