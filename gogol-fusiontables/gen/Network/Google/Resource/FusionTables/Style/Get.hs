{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module FusionTables.Style.Get
    (
    -- * REST Resource
      StyleGetAPI

    -- * Creating a Request
    , styleGet
    , StyleGet

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgKey
    , sgStyleId
    , sgOauthToken
    , sgTableId
    , sgFields
    , sgAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesStyleGet@ which the
-- 'StyleGet' request conforms to.
type StyleGetAPI =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           Capture "styleId" Int32 :> Get '[JSON] StyleSetting

-- | Gets a specific style.
--
-- /See:/ 'styleGet' smart constructor.
data StyleGet = StyleGet
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIp      :: !(Maybe Text)
    , _sgKey         :: !(Maybe Text)
    , _sgStyleId     :: !Int32
    , _sgOauthToken  :: !(Maybe Text)
    , _sgTableId     :: !Text
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgKey'
--
-- * 'sgStyleId'
--
-- * 'sgOauthToken'
--
-- * 'sgTableId'
--
-- * 'sgFields'
--
-- * 'sgAlt'
styleGet
    :: Int32 -- ^ 'styleId'
    -> Text -- ^ 'tableId'
    -> StyleGet
styleGet pSgStyleId_ pSgTableId_ =
    StyleGet
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgKey = Nothing
    , _sgStyleId = pSgStyleId_
    , _sgOauthToken = Nothing
    , _sgTableId = pSgTableId_
    , _sgFields = Nothing
    , _sgAlt = "json"
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
sgUserIp :: Lens' StyleGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' StyleGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | Identifier (integer) for a specific style in a table
sgStyleId :: Lens' StyleGet' Int32
sgStyleId
  = lens _sgStyleId (\ s a -> s{_sgStyleId = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' StyleGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Table to which the requested style belongs
sgTableId :: Lens' StyleGet' Text
sgTableId
  = lens _sgTableId (\ s a -> s{_sgTableId = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' StyleGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' StyleGet' Text
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest StyleGet' where
        type Rs StyleGet' = StyleSetting
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleGet{..}
          = go _sgQuotaUser _sgPrettyPrint _sgUserIp _sgKey
              _sgStyleId
              _sgOauthToken
              _sgTableId
              _sgFields
              _sgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy StyleGetAPI) r u
