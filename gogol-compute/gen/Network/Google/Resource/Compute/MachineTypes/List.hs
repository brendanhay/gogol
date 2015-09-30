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
-- Module      : Network.Google.Resource.Compute.MachineTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of machine type resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeMachineTypesList@.
module Network.Google.Resource.Compute.MachineTypes.List
    (
    -- * REST Resource
      MachineTypesListResource

    -- * Creating a Request
    , machineTypesList'
    , MachineTypesList'

    -- * Request Lenses
    , mtlQuotaUser
    , mtlPrettyPrint
    , mtlProject
    , mtlUserIp
    , mtlZone
    , mtlKey
    , mtlFilter
    , mtlPageToken
    , mtlOauthToken
    , mtlMaxResults
    , mtlFields
    , mtlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeMachineTypesList@ which the
-- 'MachineTypesList'' request conforms to.
type MachineTypesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "machineTypes" :>
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
                                 Get '[JSON] MachineTypeList

-- | Retrieves the list of machine type resources available to the specified
-- project.
--
-- /See:/ 'machineTypesList'' smart constructor.
data MachineTypesList' = MachineTypesList'
    { _mtlQuotaUser   :: !(Maybe Text)
    , _mtlPrettyPrint :: !Bool
    , _mtlProject     :: !Text
    , _mtlUserIp      :: !(Maybe Text)
    , _mtlZone        :: !Text
    , _mtlKey         :: !(Maybe Text)
    , _mtlFilter      :: !(Maybe Text)
    , _mtlPageToken   :: !(Maybe Text)
    , _mtlOauthToken  :: !(Maybe Text)
    , _mtlMaxResults  :: !Word32
    , _mtlFields      :: !(Maybe Text)
    , _mtlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtlQuotaUser'
--
-- * 'mtlPrettyPrint'
--
-- * 'mtlProject'
--
-- * 'mtlUserIp'
--
-- * 'mtlZone'
--
-- * 'mtlKey'
--
-- * 'mtlFilter'
--
-- * 'mtlPageToken'
--
-- * 'mtlOauthToken'
--
-- * 'mtlMaxResults'
--
-- * 'mtlFields'
--
-- * 'mtlAlt'
machineTypesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> MachineTypesList'
machineTypesList' pMtlProject_ pMtlZone_ =
    MachineTypesList'
    { _mtlQuotaUser = Nothing
    , _mtlPrettyPrint = True
    , _mtlProject = pMtlProject_
    , _mtlUserIp = Nothing
    , _mtlZone = pMtlZone_
    , _mtlKey = Nothing
    , _mtlFilter = Nothing
    , _mtlPageToken = Nothing
    , _mtlOauthToken = Nothing
    , _mtlMaxResults = 500
    , _mtlFields = Nothing
    , _mtlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mtlQuotaUser :: Lens' MachineTypesList' (Maybe Text)
mtlQuotaUser
  = lens _mtlQuotaUser (\ s a -> s{_mtlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mtlPrettyPrint :: Lens' MachineTypesList' Bool
mtlPrettyPrint
  = lens _mtlPrettyPrint
      (\ s a -> s{_mtlPrettyPrint = a})

-- | Project ID for this request.
mtlProject :: Lens' MachineTypesList' Text
mtlProject
  = lens _mtlProject (\ s a -> s{_mtlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mtlUserIp :: Lens' MachineTypesList' (Maybe Text)
mtlUserIp
  = lens _mtlUserIp (\ s a -> s{_mtlUserIp = a})

-- | The name of the zone for this request.
mtlZone :: Lens' MachineTypesList' Text
mtlZone = lens _mtlZone (\ s a -> s{_mtlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mtlKey :: Lens' MachineTypesList' (Maybe Text)
mtlKey = lens _mtlKey (\ s a -> s{_mtlKey = a})

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
mtlFilter :: Lens' MachineTypesList' (Maybe Text)
mtlFilter
  = lens _mtlFilter (\ s a -> s{_mtlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
mtlPageToken :: Lens' MachineTypesList' (Maybe Text)
mtlPageToken
  = lens _mtlPageToken (\ s a -> s{_mtlPageToken = a})

-- | OAuth 2.0 token for the current user.
mtlOauthToken :: Lens' MachineTypesList' (Maybe Text)
mtlOauthToken
  = lens _mtlOauthToken
      (\ s a -> s{_mtlOauthToken = a})

-- | Maximum count of results to be returned.
mtlMaxResults :: Lens' MachineTypesList' Word32
mtlMaxResults
  = lens _mtlMaxResults
      (\ s a -> s{_mtlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mtlFields :: Lens' MachineTypesList' (Maybe Text)
mtlFields
  = lens _mtlFields (\ s a -> s{_mtlFields = a})

-- | Data format for the response.
mtlAlt :: Lens' MachineTypesList' Alt
mtlAlt = lens _mtlAlt (\ s a -> s{_mtlAlt = a})

instance GoogleRequest MachineTypesList' where
        type Rs MachineTypesList' = MachineTypeList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u MachineTypesList'{..}
          = go _mtlQuotaUser (Just _mtlPrettyPrint) _mtlProject
              _mtlUserIp
              _mtlZone
              _mtlKey
              _mtlFilter
              _mtlPageToken
              _mtlOauthToken
              (Just _mtlMaxResults)
              _mtlFields
              (Just _mtlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MachineTypesListResource)
                      r
                      u
