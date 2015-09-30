{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesPatch@.
module Mapsengine.Tables.Patch
    (
    -- * REST Resource
      TablesPatchAPI

    -- * Creating a Request
    , tablesPatch
    , TablesPatch

    -- * Request Lenses
    , tppQuotaUser
    , tppPrettyPrint
    , tppUserIp
    , tppKey
    , tppId
    , tppOauthToken
    , tppFields
    , tppAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesPatch@ which the
-- 'TablesPatch' request conforms to.
type TablesPatchAPI =
     "tables" :> Capture "id" Text :> Patch '[JSON] ()

-- | Mutate a table asset.
--
-- /See:/ 'tablesPatch' smart constructor.
data TablesPatch = TablesPatch
    { _tppQuotaUser   :: !(Maybe Text)
    , _tppPrettyPrint :: !Bool
    , _tppUserIp      :: !(Maybe Text)
    , _tppKey         :: !(Maybe Text)
    , _tppId          :: !Text
    , _tppOauthToken  :: !(Maybe Text)
    , _tppFields      :: !(Maybe Text)
    , _tppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppQuotaUser'
--
-- * 'tppPrettyPrint'
--
-- * 'tppUserIp'
--
-- * 'tppKey'
--
-- * 'tppId'
--
-- * 'tppOauthToken'
--
-- * 'tppFields'
--
-- * 'tppAlt'
tablesPatch
    :: Text -- ^ 'id'
    -> TablesPatch
tablesPatch pTppId_ =
    TablesPatch
    { _tppQuotaUser = Nothing
    , _tppPrettyPrint = True
    , _tppUserIp = Nothing
    , _tppKey = Nothing
    , _tppId = pTppId_
    , _tppOauthToken = Nothing
    , _tppFields = Nothing
    , _tppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tppQuotaUser :: Lens' TablesPatch' (Maybe Text)
tppQuotaUser
  = lens _tppQuotaUser (\ s a -> s{_tppQuotaUser = a})

-- | Returns response with indentations and line breaks.
tppPrettyPrint :: Lens' TablesPatch' Bool
tppPrettyPrint
  = lens _tppPrettyPrint
      (\ s a -> s{_tppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tppUserIp :: Lens' TablesPatch' (Maybe Text)
tppUserIp
  = lens _tppUserIp (\ s a -> s{_tppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tppKey :: Lens' TablesPatch' (Maybe Text)
tppKey = lens _tppKey (\ s a -> s{_tppKey = a})

-- | The ID of the table.
tppId :: Lens' TablesPatch' Text
tppId = lens _tppId (\ s a -> s{_tppId = a})

-- | OAuth 2.0 token for the current user.
tppOauthToken :: Lens' TablesPatch' (Maybe Text)
tppOauthToken
  = lens _tppOauthToken
      (\ s a -> s{_tppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tppFields :: Lens' TablesPatch' (Maybe Text)
tppFields
  = lens _tppFields (\ s a -> s{_tppFields = a})

-- | Data format for the response.
tppAlt :: Lens' TablesPatch' Text
tppAlt = lens _tppAlt (\ s a -> s{_tppAlt = a})

instance GoogleRequest TablesPatch' where
        type Rs TablesPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesPatch{..}
          = go _tppQuotaUser _tppPrettyPrint _tppUserIp _tppKey
              _tppId
              _tppOauthToken
              _tppFields
              _tppAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TablesPatchAPI) r u
