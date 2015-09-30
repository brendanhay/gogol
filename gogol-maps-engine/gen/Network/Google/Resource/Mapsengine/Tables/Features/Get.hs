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
-- Module      : Network.Google.Resource.Mapsengine.Tables.Features.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a single feature, given its ID.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesFeaturesGet@.
module Network.Google.Resource.Mapsengine.Tables.Features.Get
    (
    -- * REST Resource
      TablesFeaturesGetResource

    -- * Creating a Request
    , tablesFeaturesGet'
    , TablesFeaturesGet'

    -- * Request Lenses
    , tfgQuotaUser
    , tfgPrettyPrint
    , tfgUserIp
    , tfgKey
    , tfgVersion
    , tfgId
    , tfgSelect
    , tfgOauthToken
    , tfgTableId
    , tfgFields
    , tfgAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesFeaturesGet@ which the
-- 'TablesFeaturesGet'' request conforms to.
type TablesFeaturesGetResource =
     "tables" :>
       Capture "tableId" Text :>
         "features" :>
           Capture "id" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "version"
                       MapsengineTablesFeaturesGetVersion
                       :>
                       QueryParam "select" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Feature

-- | Return a single feature, given its ID.
--
-- /See:/ 'tablesFeaturesGet'' smart constructor.
data TablesFeaturesGet' = TablesFeaturesGet'
    { _tfgQuotaUser   :: !(Maybe Text)
    , _tfgPrettyPrint :: !Bool
    , _tfgUserIp      :: !(Maybe Text)
    , _tfgKey         :: !(Maybe Text)
    , _tfgVersion     :: !(Maybe MapsengineTablesFeaturesGetVersion)
    , _tfgId          :: !Text
    , _tfgSelect      :: !(Maybe Text)
    , _tfgOauthToken  :: !(Maybe Text)
    , _tfgTableId     :: !Text
    , _tfgFields      :: !(Maybe Text)
    , _tfgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfgQuotaUser'
--
-- * 'tfgPrettyPrint'
--
-- * 'tfgUserIp'
--
-- * 'tfgKey'
--
-- * 'tfgVersion'
--
-- * 'tfgId'
--
-- * 'tfgSelect'
--
-- * 'tfgOauthToken'
--
-- * 'tfgTableId'
--
-- * 'tfgFields'
--
-- * 'tfgAlt'
tablesFeaturesGet'
    :: Text -- ^ 'id'
    -> Text -- ^ 'tableId'
    -> TablesFeaturesGet'
tablesFeaturesGet' pTfgId_ pTfgTableId_ =
    TablesFeaturesGet'
    { _tfgQuotaUser = Nothing
    , _tfgPrettyPrint = True
    , _tfgUserIp = Nothing
    , _tfgKey = Nothing
    , _tfgVersion = Nothing
    , _tfgId = pTfgId_
    , _tfgSelect = Nothing
    , _tfgOauthToken = Nothing
    , _tfgTableId = pTfgTableId_
    , _tfgFields = Nothing
    , _tfgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tfgQuotaUser :: Lens' TablesFeaturesGet' (Maybe Text)
tfgQuotaUser
  = lens _tfgQuotaUser (\ s a -> s{_tfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tfgPrettyPrint :: Lens' TablesFeaturesGet' Bool
tfgPrettyPrint
  = lens _tfgPrettyPrint
      (\ s a -> s{_tfgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tfgUserIp :: Lens' TablesFeaturesGet' (Maybe Text)
tfgUserIp
  = lens _tfgUserIp (\ s a -> s{_tfgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfgKey :: Lens' TablesFeaturesGet' (Maybe Text)
tfgKey = lens _tfgKey (\ s a -> s{_tfgKey = a})

-- | The table version to access. See Accessing Public Data for information.
tfgVersion :: Lens' TablesFeaturesGet' (Maybe MapsengineTablesFeaturesGetVersion)
tfgVersion
  = lens _tfgVersion (\ s a -> s{_tfgVersion = a})

-- | The ID of the feature to get.
tfgId :: Lens' TablesFeaturesGet' Text
tfgId = lens _tfgId (\ s a -> s{_tfgId = a})

-- | A SQL-like projection clause used to specify returned properties. If
-- this parameter is not included, all properties are returned.
tfgSelect :: Lens' TablesFeaturesGet' (Maybe Text)
tfgSelect
  = lens _tfgSelect (\ s a -> s{_tfgSelect = a})

-- | OAuth 2.0 token for the current user.
tfgOauthToken :: Lens' TablesFeaturesGet' (Maybe Text)
tfgOauthToken
  = lens _tfgOauthToken
      (\ s a -> s{_tfgOauthToken = a})

-- | The ID of the table.
tfgTableId :: Lens' TablesFeaturesGet' Text
tfgTableId
  = lens _tfgTableId (\ s a -> s{_tfgTableId = a})

-- | Selector specifying which fields to include in a partial response.
tfgFields :: Lens' TablesFeaturesGet' (Maybe Text)
tfgFields
  = lens _tfgFields (\ s a -> s{_tfgFields = a})

-- | Data format for the response.
tfgAlt :: Lens' TablesFeaturesGet' Alt
tfgAlt = lens _tfgAlt (\ s a -> s{_tfgAlt = a})

instance GoogleRequest TablesFeaturesGet' where
        type Rs TablesFeaturesGet' = Feature
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesFeaturesGet'{..}
          = go _tfgQuotaUser (Just _tfgPrettyPrint) _tfgUserIp
              _tfgKey
              _tfgVersion
              _tfgId
              _tfgSelect
              _tfgOauthToken
              _tfgTableId
              _tfgFields
              (Just _tfgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFeaturesGetResource)
                      r
                      u
