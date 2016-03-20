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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creatives.patch@.
module Network.Google.Resource.DFAReporting.Creatives.Patch
    (
    -- * REST Resource
      CreativesPatchResource

    -- * Creating a Request
    , creativesPatch
    , CreativesPatch

    -- * Request Lenses
    , cppProFileId
    , cppPayload
    , cppId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.patch@ method which the
-- 'CreativesPatch' request conforms to.
type CreativesPatchResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creatives" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Creative :> Patch '[JSON] Creative

-- | Updates an existing creative. This method supports patch semantics.
--
-- /See:/ 'creativesPatch' smart constructor.
data CreativesPatch = CreativesPatch
    { _cppProFileId :: !(Textual Int64)
    , _cppPayload   :: !Creative
    , _cppId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cppProFileId'
--
-- * 'cppPayload'
--
-- * 'cppId'
creativesPatch
    :: Int64 -- ^ 'cppProFileId'
    -> Creative -- ^ 'cppPayload'
    -> Int64 -- ^ 'cppId'
    -> CreativesPatch
creativesPatch pCppProFileId_ pCppPayload_ pCppId_ =
    CreativesPatch
    { _cppProFileId = _Coerce # pCppProFileId_
    , _cppPayload = pCppPayload_
    , _cppId = _Coerce # pCppId_
    }

-- | User profile ID associated with this request.
cppProFileId :: Lens' CreativesPatch Int64
cppProFileId
  = lens _cppProFileId (\ s a -> s{_cppProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cppPayload :: Lens' CreativesPatch Creative
cppPayload
  = lens _cppPayload (\ s a -> s{_cppPayload = a})

-- | Creative ID.
cppId :: Lens' CreativesPatch Int64
cppId
  = lens _cppId (\ s a -> s{_cppId = a}) . _Coerce

instance GoogleRequest CreativesPatch where
        type Rs CreativesPatch = Creative
        requestClient CreativesPatch{..}
          = go _cppProFileId (Just _cppId) (Just AltJSON)
              _cppPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CreativesPatchResource)
                      mempty
