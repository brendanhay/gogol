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
-- Module      : Network.Google.Resource.FusionTables.Style.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesStyleGet@.
module Network.Google.Resource.FusionTables.Style.Get
    (
    -- * REST Resource
      StyleGetResource

    -- * Creating a Request
    , styleGet'
    , StyleGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIP
    , sgKey
    , sgStyleId
    , sgOAuthToken
    , sgTableId
    , sgFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesStyleGet@ which the
-- 'StyleGet'' request conforms to.
type StyleGetResource =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           Capture "styleId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] StyleSetting

-- | Gets a specific style.
--
-- /See:/ 'styleGet'' smart constructor.
data StyleGet' = StyleGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIP      :: !(Maybe Text)
    , _sgKey         :: !(Maybe Key)
    , _sgStyleId     :: !Int32
    , _sgOAuthToken  :: !(Maybe OAuthToken)
    , _sgTableId     :: !Text
    , _sgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIP'
--
-- * 'sgKey'
--
-- * 'sgStyleId'
--
-- * 'sgOAuthToken'
--
-- * 'sgTableId'
--
-- * 'sgFields'
styleGet'
    :: Int32 -- ^ 'styleId'
    -> Text -- ^ 'tableId'
    -> StyleGet'
styleGet' pSgStyleId_ pSgTableId_ =
    StyleGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIP = Nothing
    , _sgKey = Nothing
    , _sgStyleId = pSgStyleId_
    , _sgOAuthToken = Nothing
    , _sgTableId = pSgTableId_
    , _sgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' StyleGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' StyleGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIP :: Lens' StyleGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' StyleGet' (Maybe Key)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | Identifier (integer) for a specific style in a table
sgStyleId :: Lens' StyleGet' Int32
sgStyleId
  = lens _sgStyleId (\ s a -> s{_sgStyleId = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' StyleGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Table to which the requested style belongs
sgTableId :: Lens' StyleGet' Text
sgTableId
  = lens _sgTableId (\ s a -> s{_sgTableId = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' StyleGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth StyleGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest StyleGet' where
        type Rs StyleGet' = StyleSetting
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleGet'{..}
          = go _sgTableId _sgStyleId _sgQuotaUser
              (Just _sgPrettyPrint)
              _sgUserIP
              _sgFields
              _sgKey
              _sgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy StyleGetResource) r
                      u
