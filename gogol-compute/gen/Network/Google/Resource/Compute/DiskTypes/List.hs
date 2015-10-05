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
-- Module      : Network.Google.Resource.Compute.DiskTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of disk type resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDiskTypesList@.
module Network.Google.Resource.Compute.DiskTypes.List
    (
    -- * REST Resource
      DiskTypesListResource

    -- * Creating a Request
    , diskTypesList'
    , DiskTypesList'

    -- * Request Lenses
    , dtlQuotaUser
    , dtlPrettyPrint
    , dtlProject
    , dtlUserIP
    , dtlZone
    , dtlKey
    , dtlFilter
    , dtlPageToken
    , dtlOAuthToken
    , dtlMaxResults
    , dtlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDiskTypesList@ which the
-- 'DiskTypesList'' request conforms to.
type DiskTypesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "diskTypes" :>
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
                                 Get '[JSON] DiskTypeList

-- | Retrieves the list of disk type resources available to the specified
-- project.
--
-- /See:/ 'diskTypesList'' smart constructor.
data DiskTypesList' = DiskTypesList'
    { _dtlQuotaUser   :: !(Maybe Text)
    , _dtlPrettyPrint :: !Bool
    , _dtlProject     :: !Text
    , _dtlUserIP      :: !(Maybe Text)
    , _dtlZone        :: !Text
    , _dtlKey         :: !(Maybe AuthKey)
    , _dtlFilter      :: !(Maybe Text)
    , _dtlPageToken   :: !(Maybe Text)
    , _dtlOAuthToken  :: !(Maybe OAuthToken)
    , _dtlMaxResults  :: !Word32
    , _dtlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtlQuotaUser'
--
-- * 'dtlPrettyPrint'
--
-- * 'dtlProject'
--
-- * 'dtlUserIP'
--
-- * 'dtlZone'
--
-- * 'dtlKey'
--
-- * 'dtlFilter'
--
-- * 'dtlPageToken'
--
-- * 'dtlOAuthToken'
--
-- * 'dtlMaxResults'
--
-- * 'dtlFields'
diskTypesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> DiskTypesList'
diskTypesList' pDtlProject_ pDtlZone_ =
    DiskTypesList'
    { _dtlQuotaUser = Nothing
    , _dtlPrettyPrint = True
    , _dtlProject = pDtlProject_
    , _dtlUserIP = Nothing
    , _dtlZone = pDtlZone_
    , _dtlKey = Nothing
    , _dtlFilter = Nothing
    , _dtlPageToken = Nothing
    , _dtlOAuthToken = Nothing
    , _dtlMaxResults = 500
    , _dtlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dtlQuotaUser :: Lens' DiskTypesList' (Maybe Text)
dtlQuotaUser
  = lens _dtlQuotaUser (\ s a -> s{_dtlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dtlPrettyPrint :: Lens' DiskTypesList' Bool
dtlPrettyPrint
  = lens _dtlPrettyPrint
      (\ s a -> s{_dtlPrettyPrint = a})

-- | Project ID for this request.
dtlProject :: Lens' DiskTypesList' Text
dtlProject
  = lens _dtlProject (\ s a -> s{_dtlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dtlUserIP :: Lens' DiskTypesList' (Maybe Text)
dtlUserIP
  = lens _dtlUserIP (\ s a -> s{_dtlUserIP = a})

-- | The name of the zone for this request.
dtlZone :: Lens' DiskTypesList' Text
dtlZone = lens _dtlZone (\ s a -> s{_dtlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dtlKey :: Lens' DiskTypesList' (Maybe AuthKey)
dtlKey = lens _dtlKey (\ s a -> s{_dtlKey = a})

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
dtlFilter :: Lens' DiskTypesList' (Maybe Text)
dtlFilter
  = lens _dtlFilter (\ s a -> s{_dtlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dtlPageToken :: Lens' DiskTypesList' (Maybe Text)
dtlPageToken
  = lens _dtlPageToken (\ s a -> s{_dtlPageToken = a})

-- | OAuth 2.0 token for the current user.
dtlOAuthToken :: Lens' DiskTypesList' (Maybe OAuthToken)
dtlOAuthToken
  = lens _dtlOAuthToken
      (\ s a -> s{_dtlOAuthToken = a})

-- | Maximum count of results to be returned.
dtlMaxResults :: Lens' DiskTypesList' Word32
dtlMaxResults
  = lens _dtlMaxResults
      (\ s a -> s{_dtlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dtlFields :: Lens' DiskTypesList' (Maybe Text)
dtlFields
  = lens _dtlFields (\ s a -> s{_dtlFields = a})

instance GoogleAuth DiskTypesList' where
        authKey = dtlKey . _Just
        authToken = dtlOAuthToken . _Just

instance GoogleRequest DiskTypesList' where
        type Rs DiskTypesList' = DiskTypeList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DiskTypesList'{..}
          = go _dtlProject _dtlZone _dtlFilter _dtlPageToken
              (Just _dtlMaxResults)
              _dtlQuotaUser
              (Just _dtlPrettyPrint)
              _dtlUserIP
              _dtlFields
              _dtlKey
              _dtlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DiskTypesListResource)
                      r
                      u
