{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppState.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppState.Internal.Product
  ( -- * GetResponse
    GetResponse (..),
    newGetResponse,

    -- * ListResponse
    ListResponse (..),
    newListResponse,

    -- * UpdateRequest
    UpdateRequest (..),
    newUpdateRequest,

    -- * WriteResult
    WriteResult (..),
    newWriteResult,
  )
where

import Gogol.AppState.Internal.Sum
import Gogol.Prelude qualified as Core

-- | This is a JSON template for an app state resource.
--
-- /See:/ 'newGetResponse' smart constructor.
data GetResponse = GetResponse
  { -- | The current app state version.
    currentStateVersion :: (Core.Maybe Core.Text),
    -- | The requested data.
    data' :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string appstate#getResponse.
    kind :: Core.Text,
    -- | The key for the data.
    stateKey :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetResponse' with the minimum fields required to make a request.
newGetResponse ::
  GetResponse
newGetResponse =
  GetResponse
    { currentStateVersion = Core.Nothing,
      data' = Core.Nothing,
      kind = "appstate#getResponse",
      stateKey = Core.Nothing
    }

instance Core.FromJSON GetResponse where
  parseJSON =
    Core.withObject
      "GetResponse"
      ( \o ->
          GetResponse
            Core.<$> (o Core..:? "currentStateVersion")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "kind" Core..!= "appstate#getResponse")
            Core.<*> (o Core..:? "stateKey")
      )

instance Core.ToJSON GetResponse where
  toJSON GetResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentStateVersion" Core..=) Core.<$> currentStateVersion,
            ("data" Core..=) Core.<$> data',
            Core.Just ("kind" Core..= kind),
            ("stateKey" Core..=) Core.<$> stateKey
          ]
      )

-- | This is a JSON template to convert a list-response for app state.
--
-- /See:/ 'newListResponse' smart constructor.
data ListResponse = ListResponse
  { -- | The app state data.
    items :: (Core.Maybe [GetResponse]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string appstate#listResponse.
    kind :: Core.Text,
    -- | The maximum number of keys allowed for this user.
    maximumKeyCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListResponse' with the minimum fields required to make a request.
newListResponse ::
  ListResponse
newListResponse =
  ListResponse
    { items = Core.Nothing,
      kind = "appstate#listResponse",
      maximumKeyCount = Core.Nothing
    }

instance Core.FromJSON ListResponse where
  parseJSON =
    Core.withObject
      "ListResponse"
      ( \o ->
          ListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "appstate#listResponse")
            Core.<*> (o Core..:? "maximumKeyCount")
      )

instance Core.ToJSON ListResponse where
  toJSON ListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("maximumKeyCount" Core..=) Core.<$> maximumKeyCount
          ]
      )

-- | This is a JSON template for a requests which update app state
--
-- /See:/ 'newUpdateRequest' smart constructor.
data UpdateRequest = UpdateRequest
  { -- | The new app state data that your application is trying to update with.
    data' :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string appstate#updateRequest.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateRequest' with the minimum fields required to make a request.
newUpdateRequest ::
  UpdateRequest
newUpdateRequest =
  UpdateRequest
    { data' = Core.Nothing,
      kind = "appstate#updateRequest"
    }

instance Core.FromJSON UpdateRequest where
  parseJSON =
    Core.withObject
      "UpdateRequest"
      ( \o ->
          UpdateRequest
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "kind" Core..!= "appstate#updateRequest")
      )

instance Core.ToJSON UpdateRequest where
  toJSON UpdateRequest {..} =
    Core.object
      ( Core.catMaybes
          [("data" Core..=) Core.<$> data', Core.Just ("kind" Core..= kind)]
      )

-- | This is a JSON template for an app state write result.
--
-- /See:/ 'newWriteResult' smart constructor.
data WriteResult = WriteResult
  { -- | The version of the data for this key on the server.
    currentStateVersion :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string appstate#writeResult.
    kind :: Core.Text,
    -- | The written key.
    stateKey :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteResult' with the minimum fields required to make a request.
newWriteResult ::
  WriteResult
newWriteResult =
  WriteResult
    { currentStateVersion = Core.Nothing,
      kind = "appstate#writeResult",
      stateKey = Core.Nothing
    }

instance Core.FromJSON WriteResult where
  parseJSON =
    Core.withObject
      "WriteResult"
      ( \o ->
          WriteResult
            Core.<$> (o Core..:? "currentStateVersion")
            Core.<*> (o Core..:? "kind" Core..!= "appstate#writeResult")
            Core.<*> (o Core..:? "stateKey")
      )

instance Core.ToJSON WriteResult where
  toJSON WriteResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentStateVersion" Core..=) Core.<$> currentStateVersion,
            Core.Just ("kind" Core..= kind),
            ("stateKey" Core..=) Core.<$> stateKey
          ]
      )
