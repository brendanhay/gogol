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
-- Module      : Network.Google.Resource.Compute.Disks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of persistent disks contained within the specified
-- zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDisksList@.
module Network.Google.Resource.Compute.Disks.List
    (
    -- * REST Resource
      DisksListResource

    -- * Creating a Request
    , disksList'
    , DisksList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlProject
    , dlUserIP
    , dlZone
    , dlKey
    , dlFilter
    , dlPageToken
    , dlOAuthToken
    , dlMaxResults
    , dlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksList@ which the
-- 'DisksList'' request conforms to.
type DisksListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] DiskList

-- | Retrieves the list of persistent disks contained within the specified
-- zone.
--
-- /See:/ 'disksList'' smart constructor.
data DisksList' = DisksList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlProject     :: !Text
    , _dlUserIP      :: !(Maybe Text)
    , _dlZone        :: !Text
    , _dlKey         :: !(Maybe AuthKey)
    , _dlFilter      :: !(Maybe Text)
    , _dlPageToken   :: !(Maybe Text)
    , _dlOAuthToken  :: !(Maybe OAuthToken)
    , _dlMaxResults  :: !Word32
    , _dlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlProject'
--
-- * 'dlUserIP'
--
-- * 'dlZone'
--
-- * 'dlKey'
--
-- * 'dlFilter'
--
-- * 'dlPageToken'
--
-- * 'dlOAuthToken'
--
-- * 'dlMaxResults'
--
-- * 'dlFields'
disksList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> DisksList'
disksList' pDlProject_ pDlZone_ =
    DisksList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlProject = pDlProject_
    , _dlUserIP = Nothing
    , _dlZone = pDlZone_
    , _dlKey = Nothing
    , _dlFilter = Nothing
    , _dlPageToken = Nothing
    , _dlOAuthToken = Nothing
    , _dlMaxResults = 500
    , _dlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DisksList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DisksList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | Project ID for this request.
dlProject :: Lens' DisksList' Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIP :: Lens' DisksList' (Maybe Text)
dlUserIP = lens _dlUserIP (\ s a -> s{_dlUserIP = a})

-- | The name of the zone for this request.
dlZone :: Lens' DisksList' Text
dlZone = lens _dlZone (\ s a -> s{_dlZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DisksList' (Maybe AuthKey)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

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
dlFilter :: Lens' DisksList' (Maybe Text)
dlFilter = lens _dlFilter (\ s a -> s{_dlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dlPageToken :: Lens' DisksList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DisksList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | Maximum count of results to be returned.
dlMaxResults :: Lens' DisksList' Word32
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DisksList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

instance GoogleAuth DisksList' where
        authKey = dlKey . _Just
        authToken = dlOAuthToken . _Just

instance GoogleRequest DisksList' where
        type Rs DisksList' = DiskList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksList'{..}
          = go _dlProject _dlZone _dlFilter _dlPageToken
              (Just _dlMaxResults)
              _dlQuotaUser
              (Just _dlPrettyPrint)
              _dlUserIP
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy DisksListResource)
                      r
                      u
