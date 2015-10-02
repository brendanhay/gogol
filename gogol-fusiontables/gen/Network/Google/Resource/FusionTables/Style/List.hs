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
-- Module      : Network.Google.Resource.FusionTables.Style.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of styles.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesStyleList@.
module Network.Google.Resource.FusionTables.Style.List
    (
    -- * REST Resource
      StyleListResource

    -- * Creating a Request
    , styleList'
    , StyleList'

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIP
    , slKey
    , slPageToken
    , slOAuthToken
    , slTableId
    , slMaxResults
    , slFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesStyleList@ which the
-- 'StyleList'' request conforms to.
type StyleListResource =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           QueryParam "maxResults" Word32 :>
             QueryParam "pageToken" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] StyleSettingList

-- | Retrieves a list of styles.
--
-- /See:/ 'styleList'' smart constructor.
data StyleList' = StyleList'
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIP      :: !(Maybe Text)
    , _slKey         :: !(Maybe Key)
    , _slPageToken   :: !(Maybe Text)
    , _slOAuthToken  :: !(Maybe OAuthToken)
    , _slTableId     :: !Text
    , _slMaxResults  :: !(Maybe Word32)
    , _slFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIP'
--
-- * 'slKey'
--
-- * 'slPageToken'
--
-- * 'slOAuthToken'
--
-- * 'slTableId'
--
-- * 'slMaxResults'
--
-- * 'slFields'
styleList'
    :: Text -- ^ 'tableId'
    -> StyleList'
styleList' pSlTableId_ =
    StyleList'
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIP = Nothing
    , _slKey = Nothing
    , _slPageToken = Nothing
    , _slOAuthToken = Nothing
    , _slTableId = pSlTableId_
    , _slMaxResults = Nothing
    , _slFields = Nothing
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
slUserIP :: Lens' StyleList' (Maybe Text)
slUserIP = lens _slUserIP (\ s a -> s{_slUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' StyleList' (Maybe Key)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | Continuation token specifying which result page to return. Optional.
slPageToken :: Lens' StyleList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOAuthToken :: Lens' StyleList' (Maybe OAuthToken)
slOAuthToken
  = lens _slOAuthToken (\ s a -> s{_slOAuthToken = a})

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

instance GoogleAuth StyleList' where
        authKey = slKey . _Just
        authToken = slOAuthToken . _Just

instance GoogleRequest StyleList' where
        type Rs StyleList' = StyleSettingList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleList'{..}
          = go _slMaxResults _slPageToken _slTableId
              _slQuotaUser
              (Just _slPrettyPrint)
              _slUserIP
              _slFields
              _slKey
              _slOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy StyleListResource)
                      r
                      u
