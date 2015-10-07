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
    , mtlUserIP
    , mtlZone
    , mtlKey
    , mtlFilter
    , mtlPageToken
    , mtlOAuthToken
    , mtlMaxResults
    , mtlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeMachineTypesList@ method which the
-- 'MachineTypesList'' request conforms to.
type MachineTypesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "machineTypes" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] MachineTypeList

-- | Retrieves the list of machine type resources available to the specified
-- project.
--
-- /See:/ 'machineTypesList'' smart constructor.
data MachineTypesList' = MachineTypesList'
    { _mtlQuotaUser   :: !(Maybe Text)
    , _mtlPrettyPrint :: !Bool
    , _mtlProject     :: !Text
    , _mtlUserIP      :: !(Maybe Text)
    , _mtlZone        :: !Text
    , _mtlKey         :: !(Maybe AuthKey)
    , _mtlFilter      :: !(Maybe Text)
    , _mtlPageToken   :: !(Maybe Text)
    , _mtlOAuthToken  :: !(Maybe OAuthToken)
    , _mtlMaxResults  :: !Word32
    , _mtlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mtlUserIP'
--
-- * 'mtlZone'
--
-- * 'mtlKey'
--
-- * 'mtlFilter'
--
-- * 'mtlPageToken'
--
-- * 'mtlOAuthToken'
--
-- * 'mtlMaxResults'
--
-- * 'mtlFields'
machineTypesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> MachineTypesList'
machineTypesList' pMtlProject_ pMtlZone_ =
    MachineTypesList'
    { _mtlQuotaUser = Nothing
    , _mtlPrettyPrint = True
    , _mtlProject = pMtlProject_
    , _mtlUserIP = Nothing
    , _mtlZone = pMtlZone_
    , _mtlKey = Nothing
    , _mtlFilter = Nothing
    , _mtlPageToken = Nothing
    , _mtlOAuthToken = Nothing
    , _mtlMaxResults = 500
    , _mtlFields = Nothing
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
mtlUserIP :: Lens' MachineTypesList' (Maybe Text)
mtlUserIP
  = lens _mtlUserIP (\ s a -> s{_mtlUserIP = a})

-- | The name of the zone for this request.
mtlZone :: Lens' MachineTypesList' Text
mtlZone = lens _mtlZone (\ s a -> s{_mtlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mtlKey :: Lens' MachineTypesList' (Maybe AuthKey)
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
mtlOAuthToken :: Lens' MachineTypesList' (Maybe OAuthToken)
mtlOAuthToken
  = lens _mtlOAuthToken
      (\ s a -> s{_mtlOAuthToken = a})

-- | Maximum count of results to be returned.
mtlMaxResults :: Lens' MachineTypesList' Word32
mtlMaxResults
  = lens _mtlMaxResults
      (\ s a -> s{_mtlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mtlFields :: Lens' MachineTypesList' (Maybe Text)
mtlFields
  = lens _mtlFields (\ s a -> s{_mtlFields = a})

instance GoogleAuth MachineTypesList' where
        _AuthKey = mtlKey . _Just
        _AuthToken = mtlOAuthToken . _Just

instance GoogleRequest MachineTypesList' where
        type Rs MachineTypesList' = MachineTypeList
        request = requestWith computeRequest
        requestWith rq MachineTypesList'{..}
          = go _mtlProject _mtlZone _mtlFilter _mtlPageToken
              (Just _mtlMaxResults)
              _mtlQuotaUser
              (Just _mtlPrettyPrint)
              _mtlUserIP
              _mtlFields
              _mtlKey
              _mtlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MachineTypesListResource)
                      rq
