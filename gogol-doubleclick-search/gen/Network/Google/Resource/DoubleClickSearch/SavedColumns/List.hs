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
-- Module      : Network.Google.Resource.DoubleClickSearch.SavedColumns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleclicksearchSavedColumnsList@.
module Network.Google.Resource.DoubleClickSearch.SavedColumns.List
    (
    -- * REST Resource
      SavedColumnsListResource

    -- * Creating a Request
    , savedColumnsList'
    , SavedColumnsList'

    -- * Request Lenses
    , sclQuotaUser
    , sclPrettyPrint
    , sclAgencyId
    , sclUserIp
    , sclAdvertiserId
    , sclKey
    , sclOauthToken
    , sclFields
    , sclAlt
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclicksearchSavedColumnsList@ which the
-- 'SavedColumnsList'' request conforms to.
type SavedColumnsListResource =
     "agency" :>
       Capture "agencyId" Int64 :>
         "advertiser" :>
           Capture "advertiserId" Int64 :>
             "savedcolumns" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] SavedColumnList

-- | Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ 'savedColumnsList'' smart constructor.
data SavedColumnsList' = SavedColumnsList'
    { _sclQuotaUser    :: !(Maybe Text)
    , _sclPrettyPrint  :: !Bool
    , _sclAgencyId     :: !Int64
    , _sclUserIp       :: !(Maybe Text)
    , _sclAdvertiserId :: !Int64
    , _sclKey          :: !(Maybe Text)
    , _sclOauthToken   :: !(Maybe Text)
    , _sclFields       :: !(Maybe Text)
    , _sclAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedColumnsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclQuotaUser'
--
-- * 'sclPrettyPrint'
--
-- * 'sclAgencyId'
--
-- * 'sclUserIp'
--
-- * 'sclAdvertiserId'
--
-- * 'sclKey'
--
-- * 'sclOauthToken'
--
-- * 'sclFields'
--
-- * 'sclAlt'
savedColumnsList'
    :: Int64 -- ^ 'agencyId'
    -> Int64 -- ^ 'advertiserId'
    -> SavedColumnsList'
savedColumnsList' pSclAgencyId_ pSclAdvertiserId_ =
    SavedColumnsList'
    { _sclQuotaUser = Nothing
    , _sclPrettyPrint = True
    , _sclAgencyId = pSclAgencyId_
    , _sclUserIp = Nothing
    , _sclAdvertiserId = pSclAdvertiserId_
    , _sclKey = Nothing
    , _sclOauthToken = Nothing
    , _sclFields = Nothing
    , _sclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sclQuotaUser :: Lens' SavedColumnsList' (Maybe Text)
sclQuotaUser
  = lens _sclQuotaUser (\ s a -> s{_sclQuotaUser = a})

-- | Returns response with indentations and line breaks.
sclPrettyPrint :: Lens' SavedColumnsList' Bool
sclPrettyPrint
  = lens _sclPrettyPrint
      (\ s a -> s{_sclPrettyPrint = a})

-- | DS ID of the agency.
sclAgencyId :: Lens' SavedColumnsList' Int64
sclAgencyId
  = lens _sclAgencyId (\ s a -> s{_sclAgencyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sclUserIp :: Lens' SavedColumnsList' (Maybe Text)
sclUserIp
  = lens _sclUserIp (\ s a -> s{_sclUserIp = a})

-- | DS ID of the advertiser.
sclAdvertiserId :: Lens' SavedColumnsList' Int64
sclAdvertiserId
  = lens _sclAdvertiserId
      (\ s a -> s{_sclAdvertiserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sclKey :: Lens' SavedColumnsList' (Maybe Text)
sclKey = lens _sclKey (\ s a -> s{_sclKey = a})

-- | OAuth 2.0 token for the current user.
sclOauthToken :: Lens' SavedColumnsList' (Maybe Text)
sclOauthToken
  = lens _sclOauthToken
      (\ s a -> s{_sclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sclFields :: Lens' SavedColumnsList' (Maybe Text)
sclFields
  = lens _sclFields (\ s a -> s{_sclFields = a})

-- | Data format for the response.
sclAlt :: Lens' SavedColumnsList' Alt
sclAlt = lens _sclAlt (\ s a -> s{_sclAlt = a})

instance GoogleRequest SavedColumnsList' where
        type Rs SavedColumnsList' = SavedColumnList
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u SavedColumnsList'{..}
          = go _sclQuotaUser (Just _sclPrettyPrint)
              _sclAgencyId
              _sclUserIp
              _sclAdvertiserId
              _sclKey
              _sclOauthToken
              _sclFields
              (Just _sclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SavedColumnsListResource)
                      r
                      u
