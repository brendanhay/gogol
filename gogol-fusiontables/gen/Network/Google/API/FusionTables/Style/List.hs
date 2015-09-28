{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Style.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of styles.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.list@.
module Network.Google.API.FusionTables.Style.List
    (
    -- * REST Resource
      StyleListAPI

    -- * Creating a Request
    , styleList'
    , StyleList'

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slKey
    , slPageToken
    , slOauthToken
    , slTableId
    , slMaxResults
    , slFields
    , slAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.style.list which the
-- 'StyleList'' request conforms to.
type StyleListAPI =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] StyleSettingList

-- | Retrieves a list of styles.
--
-- /See:/ 'styleList'' smart constructor.
data StyleList' = StyleList'
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIp      :: !(Maybe Text)
    , _slKey         :: !(Maybe Text)
    , _slPageToken   :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slTableId     :: !Text
    , _slMaxResults  :: !(Maybe Word32)
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slKey'
--
-- * 'slPageToken'
--
-- * 'slOauthToken'
--
-- * 'slTableId'
--
-- * 'slMaxResults'
--
-- * 'slFields'
--
-- * 'slAlt'
styleList'
    :: Text -- ^ 'tableId'
    -> StyleList'
styleList' pSlTableId_ =
    StyleList'
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slKey = Nothing
    , _slPageToken = Nothing
    , _slOauthToken = Nothing
    , _slTableId = pSlTableId_
    , _slMaxResults = Nothing
    , _slFields = Nothing
    , _slAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' StyleList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' StyleList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' StyleList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' StyleList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | Continuation token specifying which result page to return. Optional.
slPageToken :: Lens' StyleList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' StyleList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Table whose styles are being listed
slTableId :: Lens' StyleList' Text
slTableId
  = lens _slTableId (\ s a -> s{_slTableId = a})

-- | Maximum number of styles to return. Optional. Default is 5.
slMaxResults :: Lens' StyleList' (Maybe Word32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' StyleList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' StyleList' Alt
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest StyleList' where
        type Rs StyleList' = StyleSettingList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleList'{..}
          = go _slQuotaUser (Just _slPrettyPrint) _slUserIp
              _slKey
              _slPageToken
              _slOauthToken
              _slTableId
              _slMaxResults
              _slFields
              (Just _slAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy StyleListAPI) r u
